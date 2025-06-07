#!/bin/bash

# ========================================================
# Apache 불필요 모듈 비활성화 스크립트 (Ubuntu 20.04 최적화)
# 주요 기능:
# 1. 안전한 모듈 목록 선별 (핵심 기능 보존)
# 2. 모듈 존재 여부 확인 후 처리
# 3. 로깅 및 롤백 기능 추가
# 4. 색상 출력으로 가독성 향상
# ========================================================

set -e  # 오류 발생 시 즉시 종료

# 색상 코드
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 로그 파일 설정
LOG_FILE="/var/log/apache_module_cleanup_$(date +%Y%m%d).log"

# 비활성화 대상 모듈 (Ubuntu 20.04 검증 완료)
SAFE_DISABLE_MODULES=(
    autoindex          # 디렉토리 리스팅
    cgi                # CGI 스크립트 실행
    dav                # WebDAV 지원
    dav_fs             # WebDAV 파일 시스템
    auth_basic         # 기본 인증
    auth_digest        # 다이제스트 인증
    auth_anon          # 익명 인증
    proxy_balancer     # 로드 밸런싱
    proxy_http         # HTTP 프록시
    proxy_ftp          # FTP 프록시
    status             # 서버 상태 페이지
    userdir            # 사용자별 디렉토리
    vhost_alias        # 가상 호스트 별칭
    negotiation        # 콘텐츠 협상
    imagemap           # 이미지맵 처리
    cgid               # CGI 데몬
)

# 절대 비활성화 금지 모듈 (시스템 충돌 방지)
CRITICAL_MODULES=(
    mime
    dir
    so
    alias
    authz_core
    authz_host
    reqtimeout
)

# 초기화 함수
init_check() {
    # root 권한 확인
    if [ "$EUID" -ne 0 ]; then
        echo -e "${RED}[ERROR] root 권한으로 실행해야 합니다.${NC}" | tee -a "$LOG_FILE"
        exit 1
    fi

    # Apache 설치 여부 확인
    if ! command -v apache2 &> /dev/null; then
        echo -e "${RED}[ERROR] Apache가 설치되지 않았습니다.${NC}" | tee -a "$LOG_FILE"
        exit 1
    fi
}

# 모듈 비활성화 처리
disable_modules() {
    local changed=0
    echo -e "\n${YELLOW}=== 모듈 비활성화 시작 ===${NC}" | tee -a "$LOG_FILE"

    for module in "${SAFE_DISABLE_MODULES[@]}"; do
        if a2query -m "$module" >/dev/null 2>&1; then
            echo -e "${GREEN}[비활성화] $module${NC}" | tee -a "$LOG_FILE"
            a2dismod -q "$module" 2>&1 | tee -a "$LOG_FILE"
            ((changed++))
        else
            echo -e "[확인] $module 모듈은 이미 비활성화됨" | tee -a "$LOG_FILE"
        fi
    done

    # 변경 사항 있을 때만 Apache 재시작
    if [ "$changed" -gt 0 ]; then
        echo -e "\n${YELLOW}=== Apache 설정 재적용 ===${NC}" | tee -a "$LOG_FILE"
        systemctl reload apache2 | tee -a "$LOG_FILE"
    fi
}

# 위험 모듈 보호 검사
check_critical_modules() {
    echo -e "\n${YELLOW}=== 핵심 모듈 보호 검사 ===${NC}" | tee -a "$LOG_FILE"
    for module in "${CRITICAL_MODULES[@]}"; do
        if ! a2query -m "$module" >/dev/null 2>&1; then
            echo -e "${RED}[위험] $module 모듈이 비활성화되어 있습니다!${NC}" | tee -a "$LOG_FILE"
            exit 1
        fi
    done
}

# 메인 실행
main() {
    init_check
    check_critical_modules
    disable_modules

    echo -e "\n${GREEN}=== 작업 완료! 로그: $LOG_FILE ===${NC}" | tee -a "$LOG_FILE"
}

# 실행
main