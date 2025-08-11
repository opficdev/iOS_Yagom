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