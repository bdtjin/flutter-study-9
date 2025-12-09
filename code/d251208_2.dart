void main() {
  // 2는 고정
  // 곱해지는 수가 1씩 증가함

  // 1번째 단계: 1부터 9까지 출력해보기
  // 2번째 단계: 구구단 2단부터 9단까지 출력

  // for (var i = 1; i <= 9; i++) {
  //   var count = 2 * i;
  //   print('2 * $i = $count');
  //   // print('--------------');
  //   // var threecount = 3 * i;
  //   // print('3 * $i = $threecount');
  // }

  for (var j = 2; j <= 9; j++) {
    mulTable(j);
  }

  mulTable(3);
  mulTable(7);
}

/// 특정 단수의 구구단을 출력하는 함수 만들기
///
/// [number]: 출력할 단 번호
void mulTable(int number) {
  // ===== 함수 시작 ======
  for (var i = 1; i <= 9; i++) {
    print('$number * $i = ${number * i}');
  }
  // ===== 함수 끝 ======
}
