// dart는 객체지향이라 class로 이루어지고 object를 상속받게 되어있음.
// void main() {
//   String name = 'me';
//   bool alive = true;
//   // int, double 등은 num에서 파생
//   int age = 32;
//   double money = 1.2321;
// }

// List
// void main() {
//   var numbers = [1, 2, 3, 4]; // = List<int> numbers = [1, 2, 3, 4];
//   numbers.first;
//   numbers.length;
//   numbers.last;
//   // collection if로 list 만들기
//   // 5가 들어가는 형태
//   var giveMeFive = true;
//   var numbers2 = [1, 2, 3, 4, if (giveMeFive) 5,];
// }

// String Interpolation
// 변수를 그냥 넣고 싶으면 $변수명
// 아래처럼 숫자를 계산할 때에는 %{변수명 + a}
// void main(List<String> args) {
//   var name = "me";
//   var age = 10;
//   var greeting =
//       "Hello everyone, my name is $name and I'm ${age + 2}. nice to meet you!";
//   print(greeting);
// }

// Collection For
// void main() {
//   var oldFriends = ['kim', 'lee', 'yoon'];
//   var newFriends = [
//     'park',
//     'ryu',
//     'baek',
//     for (var friend in oldFriends) "🥳 $friend",
//   ];
//   print(newFriends);
// }

// Maps : much similar python's dictionary
// void main(List<String> args) {
//   // Map<String, Object>
//   var player = {
//     'name': 'kim',
//     'xp': 19.99,
//     'superpower': false,
//   };
//   // any
// }
// void main(List<String> args) {
//   // compiler 이전에 선언 가능
//   Map<int, bool> player = {
//     1: true,
//     2: false,
//     3: true,
//   };
// }
// void main(List<String> args) {
//   // List로 박아서 true 값 한번에 넣을 수도 있음
//   Map<List<int>, bool> player = {
//     [1, 2, 3, 4]: true,
//   };
//   player.values;
// }
// void main(List<String> args) {
//   // 여러개의 map으로 이루어진 list 생성
//   // 해당 방법은 class를 사용하는 것으로 대체하는 것이 좋다.
//   List<Map<String, Object>> players = [
//     {
//       'name': 'kim',
//       'xp': 19999.2999,
//     },
//     {
//       'name': 'lee',
//       'xp': 123142.232,
//     },
//   ];
// }

// Sets : set의 값은 unique (python set과 거의 같음)
// void main(List<String> args) {
//   // var numbers = {1, 2, 3, 4};
//   Set<int> numbers = {1, 2, 3, 4};
//   numbers.add(1); // exit -> {1, 2, 3, 4}
// }
