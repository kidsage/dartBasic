// Defining a Function
// void는 이 함수가 아무것도 return 하지 않는다는 의미 -> return 못씀
// void sayHello(String name) {
//   print("Hello $name nice to meet you!");
//   // return "Hello $name nice to meet you!";
// }

// String sayHello(String name) {
//   // print("Hello $name nice to meet you!");
//   return ("Hello $name nice to meet you!");
// }
// fat arrow syntax로 같은 효과를 낼 수 있다(곧바로 리턴하기 때문)
// String sayHello(String name) => "Hello $name nice to meet you!";

// 아래처럼 복잡한 func의 경우 fat arrow syntax를 사용하기 힘듬
// String sayHello(String name) {
//   // call api
//   // perform
//   return "Hello $name nice to meet you!";
// }

// void main(List<String> args) {
//   print(sayHello('kim'));
// }

// Named Parameters
// 파라미터 부분에 중괄호로 묶어주면 null safety가 발생하는데, 두 가지 방법이 있다.
// default value를 입력하거나,
// String sayHello({String name = 'kim', int age = 1, String country = 'korea'}) {
//   return "Hello $name, you're $age, and you com from $country";
// }
// required를 사용해서 null값을 방지하는 방법도 있다
// String sayHello(
//     {required String name, required int age, required String country}) {
//   return "Hello $name, you're $age, and you com from $country";
// }

// // named argument 사용법
// void main(List<String> args) {
//   print(sayHello(
//     name: 'kim',
//     age: 19,
//     country: 'korea',
//   ));
// }

// Optional Positional Parameters
// 파라미터 중 선택적으로 default값을 주고 사용할 수 있다. null도 들어올 수 있음
// String sayHello(String name, int age,
//         [String? country = 'korea'] // ? = not required
//         ) =>
//     "Hello $name, you're $age, and you com from $country";
// void main(List<String> args) {
//   var result = sayHello('kim', 12);
//   print(result);
// }

// QQ Operator
// String capitalizeName(String? name) {
//   if (name != null) {
//     return name.toUpperCase();
//   }
//   return 'KIIIIM'
// };
// 위 과정을 FAS로 표현할 때 operator들을 사용해서 이용할 수 있다.
// String capitalizeName(String? name) =>
//     // name != null ? name.toUpperCase() : 'kiiiim';
//     // 위와 동일
//     // left ?? right : left가 null이면 right를 이용
//     name?.toUpperCase() ?? 'kiiiim';

// void main(List<String> args) {
//   capitalizeName('kim');
//   capitalizeName(null); // 원래 안들어가지만 func에서 가능하게 만들어 줌
// }

// qq operator 다른 이용 방법
// void main(List<String> args) {
//   String? name;
//   name ??= 'kim';
//   name = null;
//   name ??= 'another';
//   print(name);
// }

// Typedef
// 타입에 대한 정의를 미리 내리고 적용시킬 수 있음
// typedef ListOfInts = List<int>;

// // List<int> reverseListOfNumbers(List<int> list) {
// // 위와 동일
// ListOfInts reverseListOfNumbers(ListOfInts list) {
//   var reversed = list.reversed;
//   return reversed.toList();
// }

// typedef UserInfo = Map<String, String>;

// String sayHi(UserInfo userInfo) {
//   return "Hi ${userInfo['name']}";
// }

// void main(List<String> args) {
//   // print(reverseListOfNumbers([1, 2, 3]));
//   print(sayHi({"name": 'kim'}));
// }
