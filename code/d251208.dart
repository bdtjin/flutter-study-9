/// 별 피라미드 출력하기

void main() {
  //        *
  //       ***
  //      *****
  //     *******
  //    *********
  //   ***********
  //  **************

  // int star = 1;
  // print('  ${'*' * star});
  // star = star + 2; // => 3
  // print('  ${'*' * star});

  // int star = 1;
  // print('       ${'*'* star}');
  // print('      ***');
  // print('     *****');
  // print('    ******');
  // print('   ********');
  // print('  **********');
  // print(' ************');

      // 1댄 => 별 1개
    // 2단 => 별 3개
    // 3단 => 별 5개 ... (별이 2개씩 증가하도록)

  int star = 1;
  for (var i = 0; i < 7; i++) {
    String space = ' ' * (7 - i); // 공백을 추가하기 위해서 
    print(space + '*' * star);
    star = star + 2;
  }
  // int diamond = 0;
  // for (var i = 0; i < 7; i ++){
  //     int countdiamond = 1 + diamond;
  // String space = '  ' * (7 - i);
  // print(space + '*' * countdiamond);
  // diamond = diamond - 2;
  // }
// print(star);
// 공백 1, 별 11개 출력되어야함 (star => 현재 14개)

for (var i = 1; i <= 7; i++){
  star = star - 2; 
int spaceCount = i + 1;
// int currentStar = star + 1;
print(' ' * spaceCount + '*' * star);
}

}
