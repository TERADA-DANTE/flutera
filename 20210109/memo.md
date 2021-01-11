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

BuildContext
BuildContext는 중요하다.
종종 `Scaffold.of() called with a context that does not contain a Scaffold`라는 에러를 만나는데, 이 에러는 이것과 관련이 있다.
공식문서에 따르면 BuildContext는 다음과 같다.
`Widget tree에서 현재 Widget의 위치를 알 수 있는 정보`
또한 BuildContext는 stateless widget 이나 state build method에 의해서 리턴 된 widget의 부모가 된다.


아래 내용 `depreacted`

~실제로 SnackBar class의 경우 다음과 같이 공식문서에 적혀있다.
`Scaffold.of(context).showSnackBar`
반드시 Scaffold.of(context)로 context를 참조한 뒤 SnackBar를 구현해야한다.
여기서 `of`는 현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라는 뜻이다. 비슷하게 `Theme.of`가 있다.~

Container widget은 **child 가 없으면** 가능한 크게 설정된다. child가 결정되면, child의 크기를 따른다. default가 좌측 상단으로 고정되기 때문에 이를 피하려면 Container widget을 SafeArea widget으로 감싸주어야한다.

Container widget 은 1개의 child widget을 가지고, web과 비슷하게 padding, margin을 갖는다. `EdgeInset`의 등장!

Center 와 Column widget

```
Row, Column은 MainAxis, CrossAxis가 반대입니다.
```

Center widget은 child 를 화면의 정중앙으로 고정시킨다. 하지만 Column widget은 가능한한 세로로 긴, 가로로는 child의 너비만큼의 사이즈를 갖게되므로, 이 둘을 같이 사용하게 되는경우 Center widget 은 Column widget에 대한 세로 통제권을 잃는다.
이때 Column widget 의 children을 중앙으로 위치시키고 싶을때는 `MainAxisAlignment`를 사용하면된다.

그렇다고해서 Column widget의 Container 사이즈가 변한것은아니다. 다만 children의 위치가 가운데로 정렬되었을 뿐. Container size를 children에 fit시키기 위해서는 `mainAxisSize` 를 사용해야한다.

Column widget 에서 children의 정렬순서를 바꾸기 위해서는 `verticalDirection`을 사용해야한다.

가로축 정렬에 관해서는 `crossAxisAlignment`를 사용한다. 이것을 응용해서 크기가 같은 children들을 화면의 가장 끝에 정렬하고 싶을때에는 다음과 같은 방법을 사용할 수 있다.(Invisible container)

```dart

// 크기가 다르다면 단순히 가로정렬을 사용할 수 있다.
Column(
  crossAxisAlignment : CrossAxisAlignment.end
  children : [Container, Container, Container]
)

// 하지만 모두 같다면 Invisible container를 사용한다.
Column(
  crossAxisAlignment : CrossAxisAlignment.end
  children : [Container, Container, Container, Container(
    width : double.infinity,
  )]
)

```

Flutter layout에 관해 헷갈릴때에는 주저없이 `flutter layout cheat sheet`을 활용하자.

Navigator -> Route : App page 를 구성하는 모든 Scaffold라고 생각하자.
Navigator 는 stack으로 되어있다. `push`, `pop`

view 는 push 되거나 pop되어진 stack을 들여다 보고 있는 것이다. 

라우팅은 다음과 같이 할 수 있다.


```dart
// 추가
Navigator.push(context, route)
// context : 출발 라우트의 컨텍스트
// route : 도착 라우트에 관한 함수

// route = MaterialPageRoute((_context_)=>SecondPage())
// 사용하지 않는 인자의 경우 `_`을 사용하는 센스!

// 제거
Navigator.pop(context)

```



