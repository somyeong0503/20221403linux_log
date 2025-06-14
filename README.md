## * 2주차 수업 *
  - VIRTUAL BOX 설치, 우분투 서버 설치
  - 리눅스 기본 사용 : GUI 환경 설정, 터미널 명령어, 사용자 계정 관리, 권한 전환 등 리눅스의 기초적인 사용 방법을 학습
  - 서버 운영 트렌드와 실습 : 서버 시장 동향, 리눅스 서버의 활용성, 계정 생성 및 서버 종료 등을 실습
<p align="center"> <img src="https://github.com/user-attachments/assets/be72378a-6e89-40bf-bdc6-0f67ff76cb07" width="350"/>

## * 3주차 수업 *
  - 리눅스 파일 시스템 구조 이해 : EXT4 기반의 파일 시스템과 /bin, /home, /etc 등 주요 디렉터리 구조 및 기능을 학습
  - 파일 및 디렉터리 조작 실습 : 생성, 복사, 이동, 삭제, 링크 생성 등의 명령어를 통해 파일과 폴더를 실습
  - 고급 파일 관리 기능 : find, grep 등을 활용한 파일 탐색 및 내용 검색, 하드링크 vs 심볼릭 링크 비교 등 실무 중심 기능 학습

####  ➜ 3주차 응용 문제
  - 1. 현재 사용자 홈 디렉터리의 폴더 목록을 list.txt로 리다이렉션 하시오.
  ➜ ls -d ~/*/ > list.txt
  - 2. /를 대상으로 하루(1일) 이내 변경된 모든 파일 검색하기.
  ➜ find / -type f -mtime -1 2>/dev/null
  - 3. 특정 설정 파일 game_config.xml을 검색하기.
  ➜  find / -name "game_config.xml" 2>/dev/null
  - 4. 하드 링크와 심볼릭 링크의 차이점 설명.
  ➜ 하드 링크: 원본 파일과 동일한 inode를 공유하여, 원본이 삭제되어도 내용 유지. 같은      파일 시스템 내에서만 가능.
  ➜ 심볼릭 링크: 원본 파일 경로를 참조하는 별도 파일. 원본이 삭제되면 링크는 깨짐. 다    른 파일 시스템 간에도 생성 가능.
  - 5. /root의 alias 이름을 포함하는 파일명과 행번호를 출력하시오.
  ➜ grep -rn "alias" /root 2>/dev/null

## * 4주차 수업 *
  - 리눅스 계정 생성과 보안 설정 : adduser, usermod, passwd 등을 활용한 계정 생성, 홈 디렉터리 변경, 패스워드 정책 설정 실습
  - 사용자 그룹 관리 : 그룹 생성 및 변경, 보조 그룹 추가, 그룹 삭제  등 계정과 그룹간 권한 관리를 학습
  - 원격 접속 및 폴더 공유 : ssh 서버 설정과 PUTTY를 통한 원격 접속, VIRTUAL BOX 환경에서 공유 폴더 마운트 및 파일 편집 실습
<p align="center">
  <img src="https://github.com/user-attachments/assets/7f6a5352-70c8-406b-b9f3-a90940a070c7" width="300"/>
  <img src="https://github.com/user-attachments/assets/31687d0e-ffdc-4eba-bcfd-20aa96b16cb5" width="300"/>
</p>

####  ➜ 4주차 응용 문제
  - 1. adduser 명령어로 홈 디렉터리를 지정하여 test 사용자를 생성하시오.
  ➜ sudo adduser --home /home/test test
  - 2. test 사용자의 패스워드를 지정하고, 최소일 7일, 최대일 10일로 설정하시오.
  ➜ sudo passwd test, sudo chage -m 7 -M 10 test        
  - 3. 현재 test 사용자의 GID 그룹은 무엇인가?
  ➜ id test
  - 4. GID 3000번 new 그룹, 3005번 old 그룹을 2개 생성하시오.
  ➜ sudo groupadd -g 3000 new, sudo groupadd -g 3005 old
  - 5. 사용자 test의 주 그룹을 new로, 보조 그룹으로 old를 추가하시오.
  ➜ sudo usermod -g new -aG old test
  - 6. 사용자 test를 홈 디렉터리를 포함하여 모두 삭제하시오.
  ➜ sudo userdel -r test, sudo groupdel new, sudo groupdel old
 
 ## * 5주차 수업 *
  - 리눅스 파일 권한 이해 및 설정 : ls -al, chmod, umask, chown 등을 통해 파일과 디렉터리의 권한을 확인하고 변경하는 방법을 학습
  - 특수 권한과 속성 관리: setuid, setgid, sticky bit, chattr, lsattr 등을 통해 고급 보안 설정과 시스템 관리에 필요한 권한을 학습
  - 공유 폴더 자동 마운트 설정: crontab과 쉘 스크립트를 활용하여 VirtualBox 공유 폴더를 시스템 부팅 시 자동으로 연결하는 실습을 수행
<p align="center"> <img src="https://github.com/user-attachments/assets/99da4623-f39f-411c-9520-797e5d69c1b8" width="350"/>

####  ➜ 5주차 응용 문제
  - 1. 현재 umask 기본값은 022다. 폴더 및 디렉터리 생성 시 권한을 750으로 설정하려면?
  ➜ 777 - umask = 750 → umask = 027
  - 2. 홈 디렉터리에 임시 파일 temp.txt 생성 후 소유자와 권한 설정
  ➜ 파일 생성 : touch ~/temp.txt, 소유자 및 그룹 변경: sudo chown root:root ~/temp.txt, 권한 변경 : chmod 700 ~/temp.txt
  - 3. temp.txt에 특수 권한 sticky bit 또는 setuid, setgid 등 추가
  ➜ chmod u+s ~/temp.txt, ls -l ~/temp.txt

## * 6주차 수업 *
  - 리눅스 프로세스 이해 및 상태 확인: ps, pstree, jobs 등을 통해 프로세스 구조, 상태, PID 관리, 포그라운드/백그라운드 실행 방식을 학습
  - 프로세스 제어 및 종료 실습: kill, fg, bg, Ctrl+C/Z 등을 이용해 프로세스를 중단하거나 종료하며, 좀비 프로세스(Z 상태) 처리 방법도 실습
  - Cockpit 활용한 웹 기반 모니터링: Cockpit 설치 및 설정을 통해 웹 브라우저에서 서버 자원 사용 현황을 실시간으로 모니터링하고 제어

####  ➜ 6주차 응용 문제 & 추가 구현 완료
 - 1. 좀비 프로세스와 관련된 설명 중 옳은 것은?
 정답: 2번
 ➜ 리눅스 부팅 시에 발생하는 프로세스는 exec 방식이다.
 - 2. 다음 명령어는 어떤 유형인가? (find / -name type d 2>/dev/null > dir.txt &)
 정답: 2번
 ➜ 백그라운드 프로세스
 - 3. 트리처럼 실시간 프로세스를 출력하는 명령어는?
 정답: 2번
 ➜ pstree
 - 4. 서버의 주요 서비스 등록 처리를 수행하는 프로세스는?
 정답: 4번
 ➜ 데몬 프로세스(백그라운드에서 실행되며 시스템 서비스 유지)

좀비 프로세스, Cockpit 구현완료 ➜ 
 <p align="center"> <img src="https://github.com/user-attachments/assets/e0ab2e19-034f-433f-8a45-d690489bd974" width="600"/> </p> <p align="center"> <img src="https://github.com/user-attachments/assets/33df6cb0-5ea0-45f3-8940-085c86948cd8" width="400"/> </p>

## * 7주차 수업 *
  - GitHub 연동 실습: 리눅스 환경에서 Git 설치 후, 원격 저장소 생성, 커밋, 푸시까지 깃허브에 로그 파일을 업로드하는 전 과정을 실습
  - 자동화 및 접근 설정: 보안 토큰 생성, 자동 업로드 스크립트(git_upload.sh) 작성 및 crontab을 통한 자동 실행 설정 방법을 학습

####  ➜ 7주차 응용 문제
- 1. 현재 깃허브 업로드는 업로드 할 때마다 아이디, 패스워드(토큰)을 입력 해야한다. 원격 주소를 수정하여 자동 로그인(입력)되도록 수정한다.
➜ 기존 HTTPS 방식 원격 주소를 사용하고 있었기 때문에 매번 로그인 요구가 발생했다.
이를 해결하기 위해 SSH 방식으로 원격 저장소를 재설정하여 로그인 없이 자동으로 푸시되도록 설정했다.
 <p align="center"> <img src="https://github.com/user-attachments/assets/bf49a979-c708-4d35-9492-f8666f6af3e8" width="500"/> </p> <p align="center"> <img src="https://github.com/user-attachments/assets/386049db-1a58-4bd8-a9f8-0343c2dc34f1" width="500"/> </p>
- 2. 깃허브 업로드 스크립트를 부팅할 때 자동으로 1번 실행되도록 자동 스케쥴러에 등록한다.
➜ crontab -e 명령어를 사용하여 @reboot /home/guest/shared/test.sh를 등록함으로써 부팅 시 자동 실행되도록 구성하였다. 또한 */30 * * * * /home/guest/git_upload.sh도 함께 등록하여 30분마다 자동으로 깃허브 로그 업로드가 이뤄지도록 설정하였다.
<p align="center"> <img src="https://github.com/user-attachments/assets/6587178a-1ace-458b-80c1-9c2151ee4cf3" width="300"/> </p>

## * 9주차 수업 *
  - 패키지 관리 실습: APT, dpkg 명령어로 리눅스 소프트웨어 설치, 검색, 삭제 및 보안 업데이트 수행법을 학습
  - 디스크 및 파티션 관리: fdisk, mkfs, mount, fstab 등을 사용하여 디스크 파티션 생성, 포맷, 마운트 및 자동 등록을 실습
  - 카카오톡(한글화) : wine기반으로 실행하기 구현완료
<p align="center"> <img src="https://github.com/user-attachments/assets/eb95728b-2542-4a3b-82f4-60bf88d8f682" width="300"/> </p>



####  ➜ 9주차 응용 문제
- RAID 설정 실습: mdadm을 통해 RAID 0 구성을 실습하고, 장치 2개를 하나의 고속 볼륨으로 묶어 파일시스템 생성 및 마운트를 완료
<p align="center">
  <img src="https://github.com/user-attachments/assets/69f4de0e-aced-44e9-bd8b-d2f7109a1bdb" width="300"/>
  <img src="https://github.com/user-attachments/assets/7ea94b65-a3d8-4c48-84ea-490c1a2799c3" width="300"/>
</p>

## * 10주차 수업 *
  - 웹 서버 환경 구축: Apache2, PHP, MySQL을 설치하여 리눅스에서 APM 환경을 구성하고 phpMyAdmin을 통해 데이터베이스를 관리
  - 워드프레스 설치 및 설정: 최신 워드프레스 파일을 다운로드 후 압축 해제 및 이동, DB 연결 설정, 설치 마법사로 사이트 구축까지 완료
  - 플러그인과 테마 활용: 다양한 워드프레스 테마와 플러그인을 설치하고, FTP 서버 설정을 통해 외부 업로드 및 웹사이트 커스터마이징을 실습
   <p align="center">
  <img src="https://github.com/user-attachments/assets/eb890f66-991a-439d-b168-8fecabf0bd60" width="300"/>
  <img src="https://github.com/user-attachments/assets/7d4b03e0-1aab-4927-896b-01376cb6136b" width="300"/>
</p>

## * 11주차 수업 *
  - 웹 서버 보안 설정 강화: Apache 설정 파일을 수정하여 디렉터리 목록 차단, 파일 업로드 제한, 헤더 정보 숨기기 등 웹 서버 보안을 강화
  - 불필요한 파일 및 모듈 정리: 쉘 스크립트를 활용해 불필요한 매뉴얼 파일과 미사용 Apache 모듈을 비활성화하여 서버 효율성과 보안성을 높
  - 워드프레스 및 서버 백업 자동화: 플러그인 및 쉘 스크립트로 워드프레스 백업을 수행하고, crontab을 활용한 정기 백업 및 정리 작업을 자동화
<p align="center">
  <img src="https://github.com/user-attachments/assets/2ac4ad6f-bd30-4ce2-89d2-7199cd1f425e" width="350"/>
  <img src="https://github.com/user-attachments/assets/79a3b5db-0c60-4435-8211-78d23cbc35df" width="350"/>
</p>

####  ➜ 11주차 응용 문제
  - 1. 본 문제에서는 워드프레스에서 흔히 발견되는 취약점들을 점검하고, 무료 기능과 설정을 통해 보안 강화 작업을 수행하였다.
       주요 취약점인 XML-RPC 노출, 디렉토리 인덱스 허용, 파일 편집 기능, 보안 헤더 미설정 등을 .htaccess 및 wp-config.php를 통해 개선하였다. 모든 설정은 무료 기능만으로 적용하였으며, 결과 스크린샷은 screenshots폴더에 포함하였다.
       <p align="center"> <img src="https://github.com/user-attachments/assets/bb752585-fae7-49ac-b615-c88048230058" width="300"/> </p>
  - 2. Crontab을 이용하여 총 4개의 자동화 작업을 설정하였다.
       서버 부팅 시 초기화 작업을 위한 test.sh, 30분 간격으로 Git 상태를 푸시하는 git_upload.sh, 매주 일요일 새벽 3시에 불필요한 Apache 로그 및 임시 파일을 삭제하는 cleanup_apache.sh, 그리고 매주 월요일 새벽 8시에 /var/www 디렉토리를 자동으로 백        업하는 backup_www.sh 스크립트가 설정되어 있다.
       모든 스크립트는 실행 권한 부여 후 crontab에 등록되었으며, GitHub에 스크립트와 로그 경로 포함하여 정리하였다.
       <p align="center">
        <img src="https://github.com/user-attachments/assets/15b7565a-8ff4-43fc-be6e-e261dc8ed07b" width="300"/>
        <img src="https://github.com/user-attachments/assets/1f812a7e-2272-479f-8660-1b32990b055f" width="300"/>
        <img src="https://github.com/user-attachments/assets/22d57be1-4025-467a-959e-5578f7355cb3" width="300"/>
       </p>


## * 12주차 수업 *
  - 취약점 스캐닝 도구 ZAP 활용: OWASP ZAP을 설치하고, 워드프레스 사이트에 대해 자동 및 능동 스캔을 수행하여 웹 취약점(예: XSS, CSRF, SQL Injection 등)을 분석
  - 웹 방화벽 ModSecurity 설정: Apache2에 ModSecurity와 OWASP CRS를 연동하여 실시간 공격 탐지 및 차단 기능을 설정하고, 실제 공격 시뮬레이션으로 403 응답 확인
  <p align="center">
    <img src="https://github.com/user-attachments/assets/1f7ac097-5bfb-438f-a323-1e96b220e59f" width="350"/>
    <img src="https://github.com/user-attachments/assets/37cbe17f-ce3d-4961-9742-3d898b20c61a" width="350"/>
  </p>

####  ➜ 12주차 응용 문제
  - 1. 취약점 스캔 결과 대표 취약성 5개
    X-Content-Type-Options Header Missing, Reflected Cross-Site Scripting (XSS), Password Field with Autocomplete Enabled, Missing Cache-Control Header, Cookie Without HttpOnly Flag
  - 2. ModSecurity 실습결과
    ModSecurity는 다양한 공격 패턴을 탐지 및 차단할 수 있었으며, 로그를 통해 실시간 확인 가능했다.
<p align="center"> <img src="https://github.com/user-attachments/assets/f3864e3a-eb1b-4a33-ac4a-01ac19f9f333" width="300"/> </p>


## * 13주차 수업 *
  - 자원 모니터링 개념 이해: CPU, 메모리, 스왑, 네트워크 등 리눅스 시스템의 자원 구조와 부하 원인을 분석하며 MMU, 가상 메모리, 캐시 구조 등을 학습
  - 실시간 성능 분석 도구 실습: htop, mpstat, vmstat, stress 등의 도구로 시스템 부하 상황을 실시간 모니터링하고 CPU·메모리·네트워크 부하 테스트를 수행
 <p align="center">
  <img src="https://github.com/user-attachments/assets/25ac2db2-e473-4158-aebc-149782049f52" width="350"/>
  <img src="https://github.com/user-attachments/assets/bf443615-1b7d-4543-9c80-c2549e41754e" width="350"/>
 </p>

####  ➜ 13주차 응용 문제
  ➜ 이 문제에서는 curl을 2000회 병렬로 실행하여 네트워크 대역폭을 집중적으로 소비시키고, 그로 인해 시스템 리소스(CPU, 메모리 등)에 어떤 영향을 미치는지를 관찰하였다. 
  curl은 10MB짜리 테스트 파일을 반복적으로 다운로드하며 부하를 주고, htop 명령어를 통해 리소스 사용량 변화를 실시간 모니터링하였다. 
  테스트 결과, CPU 사용률은 네트워크 IO 대기 상태로 인해 급격히 상승하진 않았지만, 전체 curl 수가 많을수록 프로세스 수 증가로 메모리 사용량이 점진적으로 증가하였다. 
  동시에 실행되는 프로세스가 많을 경우 시스템이 처리 가능한 최대 동시성 한계에 도달하면 일부 요청이 지연되거나 실패할 수 있으므로, 대규모 요청 처리 환경에서는 비동기 큐 또는 연결 풀링 등의 기술이 중요함을 확인하였다.
<p align="center"> <img src="https://github.com/user-attachments/assets/0a8b4377-4d93-455b-9fdc-17f31ef18085" width="300"/> </p>
