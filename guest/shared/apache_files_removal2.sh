#!/bin/bash

# ========================================================
# Apache 불필요 파일 제거 스크립트 (Ubuntu 20.04 최적화 버전)
# 주요 기능:
# 1. 확장된 파일 목록 (기본 샘플, 로그, 백업 파일 포함)
# 2. 다중 디렉토리 검색 (웹 루트 + Apache 시스템 경로)
# 3. 배치 모드/로그 기능 추가
# 4. 안전성 강화 (중요 경로 보호)
# ========================================================

set -eo pipefail  # 오류 발생 시 즉시 종료

# 환경 설정
HTTPD_ROOTS=(
    "/var/www/html"
    "/usr/share/apache2"
    "/etc/apache2"
)

UNNECESSARY_FILES=(
    # 기본 제공 파일
    "index.html" "default" "manual" "samples" "docs" "cgi-bin" "icons" "README*"
    # 테스트/백업 파일
    "*.bak" "*.old" "*.dist" "*.orig" "*.save" "*~" "*.tmp"
    # 보안 취약 파일
    "test-page" "phpinfo.php" "example.com" "*.swp" ".htaccess.dist"
    # 개발자 도구
    ".git" ".svn" ".idea" "node_modules" "package.json"
    # 로그/캐시
    "error.log" "access.log" "*.cache"
)

PROTECTED_PATHS=("/" "/etc" "/var" "/usr" "/bin")  # 삭제 방지 경로

# 로깅 설정
LOG_FILE="/var/log/apache_cleanup_$(date +%Y%m%d).log"
BATCH_MODE=false

# 함수: 안전 경로 확인
check_safe_path() {
    local file_path=$(realpath "$1")
    for protected in "${PROTECTED_PATHS[@]}"; do
        if [[ "$file_path" == "$protected"* ]]; then
            echo "[!] 보호된 경로 접근 차단: $file_path" | tee -a "$LOG_FILE"
            return 1
        fi
    done
}

# 함수: 파일 삭제 처리
process_deletion() {
    local file="$1"
    if check_safe_path "$file"; then
        if $BATCH_MODE; then
            echo "[배치 모드] 삭제: $file" | tee -a "$LOG_FILE"
            rm -rf "$file"
        else
            read -p "삭제할 파일: $file (y/N/a)? " yn
            case $yn in
                [Yy]*)
                    echo "[사용자 승인] 삭제: $file" | tee -a "$LOG_FILE"
                    rm -rf "$file"
                    ;;
                [Aa]*)
                    BATCH_MODE=true
                    echo "[모두 삭제] 남은 파일 자동 처리" | tee -a "$LOG_FILE"
                    rm -rf "$file"
                    ;;
                *)
                    echo "[취소] $file" | tee -a "$LOG_FILE"
                    ;;
            esac
        fi
    fi
}

# 메인 실행
echo "[ Apache 정리 시작 @ $(date) ]" | tee -a "$LOG_FILE"

# Apache 실행 확인
if ! systemctl is-active --quiet apache2; then
    echo "[!] Apache2가 실행 중이지 않습니다. 작업 중단." | tee -a "$LOG_FILE"
    exit 1
fi

# 주요 작업 루프
for root_dir in "${HTTPD_ROOTS[@]}"; do
    if [ -d "$root_dir" ]; then
        echo "검색 경로: $root_dir" | tee -a "$LOG_FILE"
        find "$root_dir" -type f \( -name "$(IFS=\|; echo "${UNNECESSARY_FILES[*]}")" \) -print0 | \
        while IFS= read -r -d '' file; do
            process_deletion "$file"
        done
    else
        echo "[!] 경로 없음: $root_dir" | tee -a "$LOG_FILE"
    fi
done

echo "[ 작업 완료! 로그 확인: $LOG_FILE ]"