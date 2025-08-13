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

## 4. [컬러피커](https://github.com/opficdev/iOS_Yagom/tree/main/ColorPicker)
- 인터페이스 빌더(스토리보드)로 `UISlider` 3개(R, G, B), 각각의 값을 표시하는 `UILabel`, 색상 미리보기용 `UIView` 등 UI 요소 배치
- `Auto Layout`을 활용하여 다양한 화면 크기에 대응
- 각 슬라이더와 레이블, 미리보기 뷰를 `@IBOutlet`으로 ViewController에 연결
- 슬라이더 값 변경 시 `@IBAction`을 통해 RGB 값을 읽어와 레이블에 표시하고, 미리보기 뷰의 배경색을 실시간으로 업데이트
- 초기 화면 진입 시 기본 색상 값이 적용되도록 `viewDidLoad`에서 초기화 코드 작성
- UIStackView를 활용하여 UI 요소를 일렬로 정렬하고, 필요에 따라 동적으로 arrangedSubview를 추가/제거하는 Dynamic StackView 구현
- 뷰 태그를 활용해 여러 슬라이더를 반복문으로 처리하거나 특정 태그의 뷰만 선택적으로 접근
- 컨트롤 이벤트(`.valueChanged`, `.touchUpInside` 등)를 코드 또는 인터페이스 빌더에서 연결하여 사용자 상호작용 처리
- 학습정리 문서에 UIStackView, Dynamic StackView, 뷰 태그, 컨트롤 이벤트, 딜리게이트 패턴 등 iOS UI 개발의 핵심 개념을 정리
