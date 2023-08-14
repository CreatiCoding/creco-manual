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
  - <img width="624" alt="image" src="https://github.com/CreatiCoding/creco-manual/assets/33514304/adc2a5c9-a180-48d9-bc78-a738a0cd90b5">
  - <img width="671" alt="image" src="https://github.com/CreatiCoding/creco-manual/assets/33514304/687008d3-96e0-4e5b-bbcb-bf5270197fef">
- capslock 보조 키 재설정(지우기)
- Dock 
  - 왼쪽, 자동 숨기기, 애니메이션 제거, 필요없는 app 고정 제거
- 자신을 관리자로 설정 (설정 - 사용자 및 그룹)
- 키 반복시 이상한 팝업뜨면서 이상한 글자입력하는거 막기
  - `defaults write -g ApplePressAndHoldEnabled -bool false`
  - 한번만 하면 되어서 bash 설정에는 포함 안시킴
  - `sudo launchctl config user path $PATH`
  - 모든 앱에서 $PATH 를 인식하도록 함
  - spotlight 단축키 끄기
- xcode 설치
- 시스템 설정 > 제어 센터

## Download List

- [chrome](https://www.google.co.kr/chrome)
  - 기본 브라우저
- [karabiner](https://karabiner-elements.pqrs.org)
  - `karabiner://karabiner/assets/complex_modifications/import?url=https://creco-org.github.io/json-storage/karabiner/creco-config-20221009.json`
- [slack](https://slack.com/intl/ko-kr/downloads/mac)
- [easyRes](https://apps.apple.com/kr/app/easyres/id688211836?mt=120)
- [OTP manager](https://apps.apple.com/us/app/otp-manager/id928941247)
  - OTP toolbar로만 적용, Dock Icon 제거 (token에서 Enable 5초 비활성, Enable 1 Click 체크)
- [1password](https://1password.com/product/mac/)
- [Brightness slider](https://apps.apple.com/kr/app/brightness-slider/id456624497?mt=12)
- [카카오톡](https://apps.apple.com/kr/app/%EC%B9%B4%EC%B9%B4%EC%98%A4%ED%86%A1/id869223134?mt=12)
- [hidden bar](https://apps.apple.com/kr/app/hidden-bar/id1452453066?mt=12)
- [vscode](https://code.visualstudio.com/download)
  - turn sync on
- [iterm2](https://iterm2.com/)
- [brew](https://brew.sh/)
- [direnv](https://formulae.brew.sh/formula/direnv#default)
- [폰트 JetBrains Mono](https://www.jetbrains.com/ko-kr/lp/mono/)
- [gifski](https://gif.ski/)
- [Raycast](https://www.raycast.com/)
  - hyperkey + f: Maximize
  - hyperkey + spacebar: clipboard
  - hyperkey + v: vscode
  - hyperkey + s: slack
  - hyperkey + c: chrome
  - hyperkey + t: iterm2
  - hyperkey + 1: work https://div.homes/box/?category=e396a261fcaa122a6544de06f8b74653
  - hyperkey + 2: knowledge https://div.homes/box/?category=a4fd6405fb2a1859662327fcc17511fd
  - hyperkey + 3: remind https://div.homes/box/?category=da4341b2929cef6c316e37261cb20a53
  - hyperkey + 4: diary https://div.homes/box/?category=43ccc619a0a2aaecc089da2ac21c1e8c

## Setting

- rg 설치 (brew install ripgrep)

- gitconfig
  - bash <(curl -s https://creaticoding.github.io/creco-manual/scripts/init.sh)

- git ssh 키 세팅 (1)

  ```
  ssh-keygen -t rsa -b 4096 -C "creaticoding@gmail.com"
  cat ~/.ssh/id_rsa.pub | pbcopy
  open https://github.com/settings/ssh/new
  ```

- git ssh 키 세팅 (2)

  ```
  ssh-keygen -t rsa -b 4096 -C "divopsor@gmail.com" -f ~/.ssh/id_rsa-divopsor
  cat ~/.ssh/id_rsa-divopsor.pub | pbcopy
  open https://github.com/settings/ssh/new
  ```
  

- creco-org/bash-config 세팅
  - git clone git@github.com:creco-org/bash-config.git
  - sudo bash install.sh
  - sudo chsh -s /bin/bash
  - iterm 기본 쉘 바꾸기

- iterm2 설정
  - reuse & bash
  - <img width="913" alt="image" src="https://user-images.githubusercontent.com/33514304/187356256-74bc92d4-be45-4c05-9122-9fffd8ec8a26.png">


- git 업데이트
  - brew install git
  - sudo mv /usr/bin/git /usr/bin/git-apple
  - brew link --force git
  
- gpg 키 설정
  - brew install gpg2
  - brew install --cask gpg-suite
  - 생성
    - gpg --full-generate-key (1, 4096, 0, y, 정석호, creaticoding@gmail.com, o)
  - github 설정
    - gpg --armor --export  $(gpg --list-secret-keys --keyid-format LONG | grep sec | awk '{ print $2 }' | cut -d "/" -f 2) | pbcopy
    - open https://github.com/settings/keys

- gitconfig 설정

```bash
  curl https://creaticoding.github.io/creco-manual/scripts/gitconfig -o .gitconfig
  cat ~/.gitconfig
  git config --global user.name 정석호
  git config --global user.email creaticoding@gmail.com
  git config --global commit.gpgsign true
  git config --global pull.ff only
  git config --global user.signingkey $(gpg --list-secret-keys --keyid-format LONG | grep sec | awk '{ print $2 }' | cut -d "/" -f 2)
  git config --global gpg.program /usr/local/MacGPG2/bin/gpg2
  cat ~/.gitconfig
```

- node, nvm, yarn, pnpm 설치
  - curl -L cheatsheet.creco.me/nvm
  - npm install -g yarn
  - npm install -g pnpm

- terraform 설치
  - brew install tfenv
  - tfenv install
  - tfenv list
  - tfenv use version
  - brew install --ignore-dependencies terragrunt


