# 야곰의 iOS 프로그래밍

#### 인프런에서 제공되는 [야곰의 iOS 프로그래밍](https://www.inflearn.com/course/ios-프로그래밍/dashboard) 강의를 정리한 리포지토리

## 1. [웹 브라우저](https://github.com/opficdev/iOS_Yagom/tree/main/MyWebBrowser)
- WebKit 기반 `WebView` 올리기
- `Activity Indicator` 올리기
- 간단한 `Auto Layout`
- `@IBOutlet`과 `View` 연결
- `@IBAction`과 `Storyboard

## 2. [내 소개 어플리케이션](https://github.com/opficdev/iOS_Yagom/tree/main/MyProfile)
- 인터페이스 빌더(스토리보드)로 `이미지`, `텍스트필드`, `텍스트뷰` 등 UI 요소 배치
- `오토 레이아웃` 제약조건으로 다양한 화면 크기 대응
- UIKit 주요 클래스(`NSObject`, `UIResponder`, `UIView`, `UIViewController` 등) 계층 구조를 mermaid 다이어그램으로 시각화
- `UIKit`과 `Foundation` 프레임워크 역할 및 import 설명
- `Human Interface Guidelines(H.I.G)`, `Auto Layout`, `Safe Area`, `Asset Catalog` 등 iOS UI 개발의 기본 개념

## 3. [업 다운 게임](https://github.com/opficdev/iOS_Yagom/tree/main/UpDown)
- 인터페이스 빌더(스토리보드)로 `레이블`, `텍스트필드`, `버튼` 등 UI 요소 배치
- `오토 레이아웃`을 활용하여 다양한 화면 크기 대응
- `@IBOutlet`과 `@IBAction`을 통해 UI와 코드 연결
- 사용자가 숫자를 입력하고, Up/Down 버튼으로 정답을 맞추는 게임 로직 구현
- 입력값 검증 및 결과에 따라 안내 메시지 표시