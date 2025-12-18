void main() {
  //
  printABC(10, "BBB", "CCC");
  // print("BBB", 10, "BBB"); => 순서가 바뀌면 안 됨

  printDEF(d: 10, e: "EEE", f: "FFF");
  printDEF(e: "EEE", d: 10, f: "FFF");

  printGHI("123", h: 10, i: "11");
  printGHI("123", h: 10);
}

// 섞어서 사용 가능
// 앞에는 위치 파라미터, 뒤에 네임드 파리미터 사용 가능
void printGHI(String g, {required int h, String? i}) {
  print("g: $g h: $h i: $i");
}

// 함수의 파라미터
// 1. 위치 파라미터 => 소괄호 안에 바로 타입과 변수명 선언!
// 사용할 땐 반드시 파라미터 선언된 순서대로만 사용!
void printABC(int a, String b, String c) {
  print("a: $a b: $b, c:$c");
}

// 2. 네임드 파라미터
// required 키워드는 함수 사용 시 반드시 넘겨줘야한다는 키워드!
// 사용할 때 파라미터 순서 상관 X
void printDEF({required d, required e, required f}) {
  print("d: $d e: $e f: $f");
}
