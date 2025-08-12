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

## IBAction
- ``IBAction``은 코드와 인터페이스 빌더의 ``Button`` 등 UI 요소의 동작(이벤트)을 연결하는 역할
- ``@IBAction`` 키워드를 사용하여 ``ViewController``에 메서드를 선언
- 인터페이스 빌더에서 버튼 등 UI 요소의 이벤트(예: ``Touch Up Inside``)와 연결하여, 사용자가 UI를 조작할 때 해당 메서드가 실행됨
- 예시:  
```swift
  @IBAction private func touchUpSubmitButton(_ sender: UIButton) { /* ... */ }
```
  
## Gesture Recognizer
- ``Gesture Recognizer``는 ``Tap``, ``Swipe``, ``Pinch`` 등 사용자의 다양한 제스처를 감지하여 처리하는 역할
- 인터페이스 빌더 또는 코드에서 ``UIGestureRecognizer``를 추가하여 사용할 수 있음
- 제스처가 감지되면 연결된 ``Action`` 메서드가 실행됨
- 예시:  
```swift
  @IBAction private func tabBackground(_ sender: UITapGestureRecognizer) {
      // 탭 제스처가 감지되었을 때 실행되는 코드
  }
```

## 메서드 코드 채우기
- 사용자가 제출 버튼을 눌렀을 때 입력값을 확인하고 결과를 표시
```swift
@IBAction private func touchUpSubmitButton(_ sender: UIButton) { ... }
```

- 사용자가 다시 시작 버튼을 눌렀을 때 게임을 초기화
```swift
@IBAction private func touchUpResetButton(_ sender: UIButton) { ... }
```

- 배경을 탭했을 때 키보드를 내림
```swift
@IBAction private func tabBackground(_ sender: UITapGestureRecognizer) { ... }
```

## Rename 메뉴
### 위치
- `Editor` 탭 -> `Refactor` 메뉴 -> `Rename`
### 용도
- ``Rename`` 메뉴는 변수, 함수, 클래스 등의 이름을 한 번에 변경할 때 사용
- 코드 전체에서 해당 식별자를 자동으로 찾아 안전하게 이름을 수정
- 실수로 놓치는 부분 없이 일관성 있게 리팩터링 가능
