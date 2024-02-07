# Flutter Project Template

2024.02.07

## Folder Structure

- Folder구조에 대한 간단한 설명입니다.

```
aura_front
├── assets
│   ├── fonts
│   ├── icons
│   └── images
├── lib
│   ├── auth
│   ├── pages
│   │   ├── others
│   │   ├── tab
│   │   └── home.dart
│   ├── services
│   │   ├── functions
│   │   ├── models
│   │   ├── providers
│   │   └── settings
│   ├── utils
│   │   ├── colors.dart
│   │   ├── constants.dart
│   │   ├── images.dart
│   │   └── styles.dart
│   ├── widgets
│   │   ├── features
│   │   └── global
```

### aura_front > assets

application 내부에서 사용되는 공통적인 static assets들을 보관.  
fonts, icons, images 폴더로 구분하여 저장. icon의 경우, 다음과 같은 파일 naming convention을 따름.

```
ic_{name}.{png, jpg, ..}
ex: ic_arrow-right.svg
```

### aura_front > lib > auth

application 의 starting(auth)와 관련된 모든 UI stuffs.

### aura_front > lib > pages

- others : notification screen, setting screen,... anything else.
- tabs : Bottom navigation(or menu)으로 나뉘어지는 page를 만듭니다. ex) search_page.dart, profile_page.dart
- home.dart : 홈 페이지를 구현합니다.

### aura_front > lib > services

- api : backend api 호출을 feature 별로 정리합니다.
- providers : 상태관리 provider
- setting : 환경변수를 관리합니다.

### aura_front > lib > utils

- colors.dart : colors class 를 만들어 모든 color를 static으로 정리
- constants.dart : 스크린 크기, string, some values 등 모든 상수를 정리합니다.
- images.dart : assets/images의 경로들을 모두 static으로 정리하여 사용합니다.
- styles.dart : 버튼의 스타일 같이, 애플리케이션 전체에서 변하지 않는 스타일들을 정리합니다. ex) App bar style, some card styles, container styles, button styles, ...
- icons.dart : assets/icon의 파일 경로를 정리하여 사용합니다. 사용하는 곳에서 svg_icon widget을 사용하여 아이콘(버튼)을 구현합니다.

### aura_front > lib > widgets

- features : feature(page) 별로 사용되는 widgets을 정리합니다. ex) 프로필, 피드, .. 등
- global : global widgets을 정리. ex) 여러 곳에서 사용되는 cards 등.

## File naming convention

- snake_case ex) search_page.dart
