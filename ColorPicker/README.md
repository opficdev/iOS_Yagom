# 컬러피커

## 인터페이스 구성하기
- 컬러 선택을 위한 `UISlider` 3개(R, G, B)와 각각의 값을 표시하는 `UILabel` 배치
- 선택된 색상을 실시간으로 보여주는 `UIView` 추가
- 각 UI 요소를 `Auto Layout`으로 정렬하여 다양한 화면 크기에 대응
- 슬라이더 값 변경 시 색상 미리보기

## 아웃렛과 액션 연결
- 각 `UISlider`(R, G, B)와 `UILabel`을 `@IBOutlet`으로 ViewController에 연결
- 색상 미리보기용 `UIView`도 `@IBOutlet`으로 연결
- 각 슬라이더의 값이 변경될 때마다 `@IBAction`을 통해 해당 색상 값을 업데이트하고, 미리보기 영역의 배경색을 실시간으로 변경