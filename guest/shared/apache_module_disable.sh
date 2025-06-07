#!/bin/bash

# 비활성화할 모듈 목록
modules=(
    "autoindex"
    "auth_basic"
    "auth_digest"
    "auth_negotiate"
    "auth_anon"
    "auth_file"
    "auth_ldap"
    "auth_unix"
    "cgi"
    "cgi_mod"
    "dav"
    "dav_module"
    "dir"
    "env"
    "expires"
    "fastcgi"
    "include"
    "language"
    "mime"
    "negotiation"
    "proxy"
    "proxy_auth"
    "proxy_balancer"
    "proxy_ftp"
    "proxy_http"
    "proxy_scgi"
    "setenv"
    "so"
    "status"
    "suexec"
    "trace"
    "userdir"
    "vhost_alias"
    "wsgi"
)

# Apache 설치 경로
apache_dir="/etc/apache2"

# 각 모듈 비활성화
for module in "${modules[@]}"; do
    a2dismod "$module"
done

# Apache 구성 파일 다시 읽기
systemctl reload apache2

echo "Apache 웹 서버 2의 불필요한 모듈이 비활성화되었습니다."