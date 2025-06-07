#!/bin/bash

echo ""

echo "[ Apache 불필요한 파일 제거 (Ubuntu 20.04 버전) ]"

# 아파치2 실행 여부 확인
if [ `systemctl status apache2 | grep active -c` -eq 0 ]; then
    echo "Apache2 미실행중입니다."
    exit 1
fi

# 불필요한 파일 목록 설정 (Ubuntu 20.04 기준)
UNNECESSARY_FILES=(
    "manual"
    "samples"
    "docs"
    "cgi-bin"
    "icons"
    "private"
    "public_html/robots.txt"  # 로봇.txt 제거 여부는 사용자 선택 (옵션 추가 권장)
)

# 아파치2 웹 서버 루트 디렉터리
HTTPD_ROOT="/var/www/html"

# 불필요한 파일 목록 확인 및 제거
for file in "${UNNECESSARY_FILES[@]}"; do
    find $HTTPD_ROOT -type f -name "*$file*" -print0 | while IFS= read -r -d '' file; do
        if [ -f "$file" ]; then
            echo "제거할 파일: $file"
            read -p "삭제하시겠습니까? (y/N): " yn
            if [ "$yn" = "y" -o "$yn" = "Y" ]; then
                rm -rf "$file"
                echo "파일 삭제됨: $file"
            else
                echo "파일 삭제 취소됨: $file"
            fi
        fi
    done
done

echo ""