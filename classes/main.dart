// My First Dart Class
// class에서는 타입을 꼭 명시해 주어야함.
// class Player {
//   final String name = 'kim';
//   int xp = 1500;

//   // class 내에서는 this.를 사용하지 않는 것이 권장됨
//   // 하지만 아래 함수 내부에서 name을 사용하면 class에 접근할 때 this.를 사용해야함.
//   void sayHello() {
//     print("Hi my name is $name.");
//   }
// }

// void main(List<String> args) {
//   var player = new Player(); // instance 생성
//   // player.name = 'lee'; // final로 변경 불가라 에러 발생
//   // print(player.name);
//   player.sayHello();
// }

// Constructors
// class Player {
//   // late final String name;
//   // late int xp = 1500;

//   // Player(String name, int xp) {
//   //   this.name = name;
//   //   this.xp = xp;
//   // }

//   // 위와 같은 역할을 함
//   final String name;
//   int xp;
//   // args 순서대로 배치 된다
//   Player(this.name, this.xp);

//   void sayHello() {
//     print("Hi my name is $name.");
//   }
// }

// void main(List<String> args) {
//   var player = Player('lee', 1600);
//   player.sayHello();
//   var player2 = Player("lynn", 2500);
//   player2.sayHello();
// }

// Named Constructor Parameters
// class Player {
//   final String name;
//   int xp;
//   String team;
//   int age;
//   // args 순서대로 배치 된다
//   // 근데 positional args는 class가 커지면 힘들어짐 따라서 {}로 묶어줌
//   // 이후에 required 붙여서 에러나지 않게 진행해줌
//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.age,
//   });

//   void sayHello() {
//     print("Hi my name is $name.");
//   }
// }

// void main(List<String> args) {
//   var player = Player(
//     name: "kim",
//     xp: 1200,
//     team: 'red',
//     age: 21,
//   );
//   // var player2 = Player("lynn", 2500, 'blue', 12);
//   player.sayHello();
//   // player2.sayHello();
// }

// Named Constructors
// class Player {
//   final String name;
//   int xp, age; // 같은 데이터형 끼리 묶어서 사용 가능
//   String team;

//   //
//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//     required this.age,
//   });

//   // named constructors > initializing class
//   Player.createBluePlayer({
//     required String name,
//     required int age,
//   })  : this.age = age,
//         this.name = name,
//         this.team = 'blue',
//         this.xp = 0;

//   Player.createRedPlayer(String name, int age)
//       : this.age = age,
//         this.name = name,
//         this.team = 'red',
//         this.xp = 0;

//   void sayHello() {
//     print("Hi my name is $name.");
//   }
// }

// void main(List<String> args) {
//   var player = Player(
//     name: "kim",
//     xp: 1200,
//     team: 'red',
//     age: 21,
//   );
//   // named
//   var player2 = Player.createBluePlayer(
//     name: 'kim',
//     age: 21,
//   );
//   // positional
//   var player3 = Player.createRedPlayer('kim', 21);
// }

// Recap
// flutter dart class로 변형하는 방법
// class Player {
//   final String name;
//   int xp;
//   String team;

//   Player.fromJson(Map<String, dynamic> playerJson)
//       : name = playerJson['name'],
//         xp = playerJson['xp'],
//         team = playerJson['team'];

//   void sayHello() {
//     print("Hi my name is $name.");
//   }
// }

// void main(List<String> args) {
//   var apiData = [
//     {
//       "name": "kim",
//       "team": "red",
//       "xp": 0,
//     },
//     {
//       "name": "lynn",
//       "team": "red",
//       "xp": 0,
//     },
//     {
//       "name": "dart",
//       "team": "red",
//       "xp": 0,
//     },
//   ];

//   apiData.forEach((playerJson) {
//     var player = Player.fromJson(playerJson);
//     player.sayHello();
//   });
// }

// Cascade Notation
// class Player {
//   String name;
//   int xp;
//   String team;

//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });

//   void sayHello() {
//     print("Hi my name is $name.");
//   }
// }

// void main(List<String> args) {
//   var kim = Player(name: 'kim', xp: 120, team: 'red'); // 세미콜론 없음
//   var potato = kim
//     // 바로 위에 있는 instance에 따라감
//     ..name = 'las' // = kim.name
//     ..xp = 120000 // = kim.xp
//     ..team = 'blue' // = kim.team
//     ..sayHello();
// }

// Enums : 제한을 둠
// 오타 검수 용으로도 사용 가능
// enum Team { red, blue } // "" 형태로 사용할 필요가 없음

// enum XPLevel { beginner, medium, pro }

// class Player {
//   String name;
//   XPLevel xp;
//   Team team; // 위에 있는 enum으로

//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });

//   void sayHello() {
//     print("Hi my name is $name.");
//   }
// }

// void main(List<String> args) {
//   var kim = Player(
//     name: 'kim',
//     xp: XPLevel.beginner,
//     team: Team.red,
//   ); // team. 으로 팀을 선택해야함
//   var potato = kim
//     // 바로 위에 있는 instance에 따라감
//     ..name = 'las' // = kim.name
//     ..xp = XPLevel.pro // = kim.xp
//     ..team = Team.blue // = kim.team
//     ..sayHello();
// }

// Abstract Classes(추상화 클래스) : 객체 생성 불가능
// 다른 클래스들이 구현해야 할 기능의 청사진이라고 생각하면 편함
// abstract class Human {
//   void walk();
// }

// enum Team { red, blue } // "" 형태로 사용할 필요가 없음

// enum XPLevel { beginner, medium, pro }

// // 추상화 클래스를 상속받는 extends
// class Player extends Human {
//   String name;
//   XPLevel xp;
//   Team team; // 위에 있는 enum으로

//   Player({
//     required this.name,
//     required this.xp,
//     required this.team,
//   });

//   void walk() {
//     print("I'm walking");
//   }

//   void sayHello() {
//     print("Hi my name is $name.");
//   }
// }

// class Coach extends Human {
//   void walk() {
//     print("The coach is walking");
//   }
// }

// void main(List<String> args) {
//   var kim = Player(
//     name: 'kim',
//     xp: XPLevel.beginner,
//     team: Team.red,
//   ); // team. 으로 팀을 선택해야함
//   var potato = kim
//     // 바로 위에 있는 instance에 따라감
//     ..name = 'las' // = kim.name
//     ..xp = XPLevel.pro // = kim.xp
//     ..team = Team.blue // = kim.team
//     ..sayHello();
// }

// Inheritance
// class Human {
//   final String name;
//   // 자식 클래스에서 온 것을 받아주는 required
//   Human({required this.name});
//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// enum Team { blue, red }

// class Player extends Human {
//   final Team team;

//   Player({
//     required this.team,
//     // Human에게 전달해야 하는 데이터
//     required String name,
//     // 부모 클래스와 상호작용을 할 수 있게 해준다
//     // 부모 클래스의 required를 지우고 super(name)만 해도 동일하게 사용 가능
//   }) : super(name: name);

//   @override // 대체
//   void sayHello() {
//     super.sayHello();
//     print("and I play for ${team}");
//   }
// }

// void main(List<String> args) {
//   var player = Player(
//     team: Team.red,
//     name: 'kim',
//   );
//   player.sayHello();
// }

// Mixins : 생성자가 없는 클래스
// class에 property등을 추가할 때 사용함
class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("RuuuuuuuuN!");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team { blue, red }

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

void main(List<String> args) {
  var player = Player(
    team: Team.red,
  );
  player.runQuick();
}


// Conclusions
