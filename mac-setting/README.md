# Mac Environment Setting

## Environment

- Mac mini intel / Mac M1 Max
- Keychron (60배열)
- Magic Trackpad

## Presetting

- OS 버전을 확인 후, Big Sur 업데이트
- 손쉬운 사용 -> 확대 cmd + 스크롤
- 맞춤법 끄기
- 키보드 키반복, 반복 지연 시간 빠르고 짧게 변경
- capslock 보조 키 재설정(지우기)
- Dock 
  - 왼쪽, 자동 숨기기, 애니메이션 제거, 필요없는 app 고정 제거
- 자신을 관리자로 설정 (설정 - 사용자 및 그룹)
- 키 반복시 이상한 팝업뜨면서 이상한 글자입력하는거 막기
  - `defaults write -g ApplePressAndHoldEnabled -bool false`
  - 한번만 하면 되어서 bash 설정에는 포함 안시킴
- xcode 설치

## Download List

- [chrome](https://www.google.co.kr/chrome)
  - 기본 브라우저
- [karabiner](https://karabiner-elements.pqrs.org)
  - `karabiner://karabiner/assets/complex_modifications/import?url=https://creco-org.github.io/json-storage/karabiner/creco-config-20221009.json`
- [slack](https://slack.com/intl/ko-kr/downloads/windows)
- [easyRes](https://apps.apple.com/kr/app/easyres/id688211836?mt=120)
- [OTP manager](https://apps.apple.com/us/app/otp-manager/id928941247)
  - OTP toolbar로만 적용, Dock Icon 제거 (token에서 Enable 5초 비활성, Enable 1 Click 체크)
- [1password](https://apps.apple.com/kr/app/1password-7-password-manager/id1333542190?mt=12)
- [Hot Key](https://apps.apple.com/kr/app/hotkey-app/id975890633?mt=12)
- [Brightness slider](https://apps.apple.com/kr/app/brightness-slider/id456624497?mt=12)
- [카카오톡](https://apps.apple.com/kr/app/%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%86%A1/id869223134?mt=12)
- [alfred](https://www.alfredapp.com)
  - spotlight 단축키 끄기
  - alfred 4 세팅 추가
  - 1password에서 가져오기
  <img width="850" alt="image" src="https://user-images.githubusercontent.com/33514304/177676875-a1ae3c15-d1b5-4347-9d2c-e72e31f82949.png">
  - 이거 끄면 한영 전환해도 서브 메뉴 선택 
- [hidden bar](https://apps.apple.com/kr/app/hidden-bar/id1452453066?mt=12)
- [vscode](https://code.visualstudio.com/download)
  - turn sync on
- [iterm2](https://iterm2.com/)
- [brew](https://brew.sh/)
- [direnv](https://formulae.brew.sh/formula/direnv#default)
- [폰트 JetBrains Mono](https://www.jetbrains.com/ko-kr/lp/mono/)
- [gifski](https://gif.ski/)


## Setting

- git 설치

- git ssh 키 세팅
  - ssh-keygen -t rsa -b 4096 -C "seokho.jeong@이메일"
  - cat ~/.ssh/id_rsa.pub >> git site
  - git config --global user.name {YOUR_NAME}
  - git config --global user.email {YOUR_EMAIL}
  - git config --global commit.gpgsign true
  - git config --global pull.ff only
  - git config --list

- gpg 키 설정
  - brew install --cask gpg-suite
  - gpg --full-generate-key (1, 4096, 0, y, 정석호, seokho.jeong@이메일, o)
  - gpg --list-secret-keys --keyid-format LONG (여기서 sec 라인에 있는 rsa4096/<<KEY>> 중 <<KEY>> 영역을 복사 한다.)
  - git config --global user.signingkey 키
  - gpg --armor --export 키 | pbcopy
  - https://github.com/settings/keys 에 가서 등록하기
  - brew install gpg2
  - git config --global gpg.program /usr/local/MacGPG2/bin/gpg2

- rg 설치 (brew install ripgrep)

- nvm 설치
  - curl -L cheatsheet.creco.me/nvm
  - npm install -g yarn

- terraform 설치
  - brew install tfenv
  - tfenv install
  - tfenv list
  - tfenv use version
  - brew install --ignore-dependencies terragrunt

- creco-org/bash-config 세팅
  - git clone git@github.com:creco-org/bash-config.git
  - sudo bash install.sh
  - sudo chsh -s /bin/bash
  - <img width="913" alt="image" src="https://user-images.githubusercontent.com/33514304/187356256-74bc92d4-be45-4c05-9122-9fffd8ec8a26.png">



