# 내 소개 어플리케이션

## 인터페이스 빌더로 레이아웃 구성하기
<img width="274" height="613" alt="Image" src="https://github.com/user-attachments/assets/e6a684ef-9845-4211-8792-1bb99d2d4169" />
<br>

<img width="123" height="163" alt="Image" src="https://github.com/user-attachments/assets/ee424f3a-4f1c-4757-ad60-f8d4fdf48c43" />

## Auto Layout
<img width="270" height="358" alt="Image" src="https://github.com/user-attachments/assets/3b60a668-bcf4-4ba5-be09-1402ff1d5d5f" />

## UIKit과 개발자 문서
- `User Interface Kit`
- `iOS` 또는 `tvOS`의 사용자 인터페이스 구성을 위한 `프레임워크`
- `Foundation` 프레임워크와 더불어 iOS의 대부분의 큰 기능을 이루는 뼈대
    - `UIKit` 프레임워크를 import 했다면 `Foundation` 프레임워크는 import할 필요 `없음`

<img width="336" height="96" alt="Image" src="https://github.com/user-attachments/assets/cf1bd5b5-1e68-441b-a395-6d17b24386b6" />

- 도식도
```mermaid
graph TD
    NSObject["NSObject"]
    UITouch["UITouch"]
    UIEvent["UIEvent"]
    UIResponder["UIResponder"]
    UIGestureRecognizer["UIGestureRecognizer"]
    UIScreen["UIScreen"]
    UITapGestureRecognizer["UITapGestureRecognizer"]
    UIPanGestureRecognizer["UIPanGestureRecognizer"]
    UIView["UIView"]
    UIApplication["UIApplication"]
    UIViewController["UIViewController"]
    UIWindow["UIWindow"]
    UILabel["UILabel"]
    UIControl["UIControl"]
    UIImageView["UIImageView"]
    UITabBarController["UITabBarController"]
    UITableViewController["UITableViewController"]
    UINavigationController["UINavigationController"]
    UIButton["UIButton"]
    UIDatePicker["UIDatePicker"]
    UIPageControl["UIPageControl"]
    UITextField["UITextField"]
    UISwitch["UISwitch"]
    UISlider["UISlider"]

    NSObject --> UITouch
    NSObject --> UIEvent
    NSObject --> UIResponder
    NSObject --> UIGestureRecognizer
    NSObject --> UIScreen

    UIGestureRecognizer --> UITapGestureRecognizer
    UIGestureRecognizer --> UIPanGestureRecognizer

    UIResponder --> UIView
    UIResponder --> UIApplication
    UIResponder --> UIViewController

    UIView --> UIWindow
    UIView --> UILabel
    UIView --> UIControl
    UIView --> UIImageView

    UIControl --> UIButton
    UIControl --> UIDatePicker
    UIControl --> UIPageControl
    UIControl --> UITextField
    UIControl --> UISwitch
    UIControl --> UISlider

    UIViewController --> UITabBarController
    UIViewController --> UITableViewController
    UIViewController --> UINavigationController
    UIViewController --> UIView
```

### View Hierarchy
- 빌드한 후 화살표로 표시된 버튼을 탭하면 뷰 계층을 볼 수 있음
<img width="318" height="140" alt="Image" src="https://github.com/user-attachments/assets/696ea4e4-c94f-43d0-936b-7816666cf0d2" />

- 뷰 계층 보기
<img width="550" height="722" alt="Image" src="https://github.com/user-attachments/assets/47023cfa-7211-4f27-b40c-926b7a821ff3" />

## H.I.G와 Auto Layout
[**Human Interface Guidelines**](https://developer.apple.com/design/human-interface-guidelines)
- 사용자와의 `상호작용`에 필요한 테크닉이나 개념을 정리해둔 문서
- 개발자뿐만 아니라 디자이너도 참고해야할 문서임

[**Auto Layout**](https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/AutolayoutPG/index.html)
- 화면의 크기나 디바이스의 방향에 구애받지 않고 뷰에 주어진 제약사항에 따라 화면 요소의 크기나 위치를 스스로 계산해서 화면에 배치하는 역할

- **Safe Area**
    - iOS 11부터 적용됨
    - 컨텐츠가 나타나도 다른 구성 요소에 방해받지 않을 영역

**Asset Catalog**
- Asset을 비롯한 여러 리소스 파일을 관리하는 것을 도와줌 (ex: 이미지, 색상 등)

