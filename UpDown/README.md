# 업 다운

## 인터페이스 구성하기
- `Main.storyboard`에서 화면을 구성
- `Label`, `Button` 등 다양한 UI 컴포넌트를 배치
- 각 UI 요소에 대해 `Identifier`를 설정하여 코드와 연결
- 인터페이스 빌더를 통해 시각적으로 레이아웃을 조정

## IBOutlet
- `IBOutlet`은 코드와 인터페이스 빌더의 UI 요소를 연결하는 역할
- `@IBOutlet` 키워드를 사용하여 `ViewController`에 UI 컴포넌트의 참조를 선언
- 연결된 `IBOutlet`을 통해 코드에서 UI 요소의 속성을 변경하거나 이벤트를 처리
- 예시:  
```swift
  @IBOutlet private weak var titleLabel: UILabel!
```