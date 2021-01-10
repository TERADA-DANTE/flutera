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

클래스와 위젯

스마트폰을 공장에서 생산한다. 

모든 스마트폰은 똑같은 공장에서 같은 공정을 통해 만들어진 부품을 가지고 있으므로 이들을 같은 스마트폰이라고 말할 수 있을까? 

스마트폰들은 각자의 시리얼 넘버, 부품 시리얼 넘버를 가지고 있다. 또한 사용자들은 각자의 유심을 끼워 사용하고 있다.

결국 하나의 같은 틀에서 나온 스마트폰이지만 각각 고유한 스마트폰이라고 볼 수 있다.

이것과 객체지향을 연결한다.

Dart도 객체지향언어이기때문에 Class(당연히 메모리안에 존재) 안에 속성과 메소드(기능)이 존재하고 여기서 인스턴스가 만들어진다.

Dart는 constructor를 생략해도 알아서 만들어준다.

생성자 만드는 법

```dart
class Person{
  String name;
  int age;
  bool isMale;
  
  Person({String name, int age, bool isMale}){
      this.name = name;
      this.age = age;
      this.isMale = isMale;
  }
}

void main(){
  Person terada = new Person(name : 'terada', isMale : false, age : 14);
  print([terada.name, terada.age, terada.isMale]);  
}

```
자바스크립트(타입스크립트)랑 너무 비슷하다.

Type 추론때문에 다음과 같은 선언도 에러를 발생시키진 않는다.
```dart
// Good
int addNumber(int num1, int num2){
  return num1 + num2;
}

// Not good, but still ok
addNumber(num1, num2){
  return num1 + num2;
}
```

