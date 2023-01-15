// variables

// void main() {
//   print('Hello World!');
// }

// void main() {
//   var name = 'me'; // var는 명시적으로 변수타입을 지정해주는 것.
//   String name = 'me';
//   name = 1; // 수정시에는 원래 변수형과 같은 변수형을 넣어주어야 한다.
// }

// dynamic 변수형.
// void main() {
//   dynamic name = 'me'; // dynamic으로 인식
//   if(name is String) { // string으로 인식

//   }
//   if(name is int) { // int로 인식

//   }
// }

// null safety
// 기본적으로 모든 변수는 non-nullable인 것을 기억하자.

// without null safety
// bool isEmpty(String string) => string.length == 0;

// main() {
//   isEmpty(null);
// }

// // with null safety
// void main() {
//   String? name = 'me'; // ? -> name이 string일 수도 null 일 수도 있다고 인식 == nullable
//   name = null;
//   if (name != null) {
//     name.isNotEmpty;
//   }
// }

// final : 한 번 정의된 변수를 수정하지 않게 할 때 사용
void main() {
  final name = 'me';
}
