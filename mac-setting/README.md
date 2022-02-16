# Mac Environment Setting

## Environment

- Mac mini intel / Mac M1 Max
- Keychron (60배열)
- Magic Trackpad

## To do list

1. OS 버전을 확인 후, Big Sur 업데이트
2. 손쉬운 사용 -> 확대 cmd + 스크롤
3. 맞춤법 끄기
4. 키보드 키반복, 반복 지연 시간 빠르고 짧게 변경
5. capslock 보조 키 재설정(지우기)
6. Dock - 왼쪽, 자동 숨기기, 애니메이션 제거, 필요없는 app 고정 제거
7. easyRes 설치 (해상도 자유 조절)
8. karabiner 설치
9. karabiner.json을 `/Users/[유저명]/.config/karabiner`에 추가
10. [👉 바로추가하기](karabiner://karabiner/assets/complex_modifications/import?url=https://creco-org.github.io/json-storage/karabiner/creco-config-20211203.json)
11. slack 설치 후, 워크스페이스 추가
12. OTP manager 설치 후, mobile google authenticator에서 불러오기
13. OTP toolbar로만 적용, Dock Icon 제거 (token에서 Enable 5초 비활성, Enable 1 Click 체크)
14. 1password 설치 (app and chrome extension)
15. chrome 설치 후, google 계정 연동
  - 기본 브라우저
16. 카카오톡 설치 후, 계정 연동 / 로그인
17. 자신을 관리자로 설정 (설정 - 사용자 및 그룹)
18. https://brew.sh/ 설치
19. git 설치
20. direnv 설치
  - https://formulae.brew.sh/formula/direnv#default
21. xcode 설치 (13으로)
22. git ssh 키 세팅
  -  ssh-keygen -t rsa -b 4096 -C "seokho.jeong@이메일"
  -  cat ~/.ssh/id_rsa.pub >> git site
  -  git config --global user.name {YOUR_NAME}
  - git config --global user.email {YOUR_EMAIL}
  - git config --global pull.ff only
  - git config --list
23. gpg 키 설정
  - brew install --cask gpg-suite
  - gpg --full-generate-key (1, 4096, 0, y, 정석호, seokho.jeong@이메일, o)
  - gpg --list-secret-keys --keyid-format LONG (여기서 sec 라인에 있는 rsa4096/<<KEY>> 중 <<KEY>> 영역을 복사 한다.)
  - git config --global user.signingkey 키
  - gpg --armor --export 키 | pbcopy
  - https://github.com/settings/keys 에 가서 등록하기
24. https://iterm2.com/ 다운로드
25. rg 설치 (brew install ripgrep)
26. creco-org/bash-config 세팅
27. vscode 설치 - turn sync on
  - https://code.visualstudio.com/download
  - 계정 연동
28. 폰트는 JetBrains Mono - https://www.jetbrains.com/ko-kr/lp/mono/
29. nvm 설치
  - cl creco-org.github.io/cheatsheet.creco.me/nvm
  - npm install -g yarn


----

자동화 필요
지속적 업데이트 필요
