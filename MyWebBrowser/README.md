# 웹 브라우저

## UI 구성하기
- `WKWebView`를 화면에 배치하여 웹 페이지를 표시
- `UIActivityIndicatorView`를 추가하여 네트워크 로딩 상태를 표시
- 하단 툴바에 뒤로가기, 앞으로가기, 새로고침 버튼 배치
- Auto Layout을 사용하여 각 UI 요소의 위치와 크기 지정
- Navigation Controller를 사용하여 네비게이션 바 및 툴바 구성

## 코드로 기능 구현하기
- `WKWebView`를 통한 웹 페이지 로드 및 탐색 기능 구현
- `@IBOutlet`으로 `WKWebView`와 `UIActivityIndicatorView` 연결
- `@IBAction`으로 툴바 버튼(뒤로, 앞으로, 새로고침) 기능 연결
- `WKNavigationDelegate`를 통해 웹뷰의 네비게이션 이벤트 처리
    - 페이지 로딩 시작 시 인디케이터 표시, 완료/실패 시 인디케이터 숨김
    - 페이지 타이틀을 네비게이션 바에 표시
    - 오류 발생 시 알림창 표시
- 마지막 방문한 페이지 URL을 `UserDefaults`에 저장