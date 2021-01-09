플러터의 기본단위는 Widget이다.

모든 것이 위젯으로 이루어져있다.

리액트의 컴포넌트 같은 뜻

Types of widgets
1. Stateless widget
2. Stateful widget
3. Inherited widget

일반적으로 상태라는 의미를 가지는 State
정적, 동적이다 라는 정도의 이해

정적 : 스크린상에만 존재할 뿐 아무것도 하지 않는다.
: 어떠한 실시간 데이터도 저장하지 않는다.
: 이미지, 텍스트

동적 : 사용자의 인터랙션에 따라 변화한다.
: 인풋, 폼

Flutter widget tree
플러터는 모든것이 위젯으로 구성되어있다. => 한 위젯이 다른 위젯을 포함할 수 있다.
위젯들의 계층구조를 widget tree라고 표현한다.
부모자식관계
Parent widget을 widget container라고 표현하기도함

플러터 앱 구조
pubspec 프로젝트의 메타데이터를 정의하는 곳

프로젝트 버전, 사용환경, packge.json같은 건가?

lib/ : main dart파일이 들어있다. 여기가 워크스페이스

Flutter를 사용하기 위해서는 반드시 Flutter material library를 가져와야만한다. 따라서 Dart파일 작성시 항상 import해주어야한다.
