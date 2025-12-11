import 'dart:io';

void main()async{ 
 // 파일 불러와서 "00님의 성적은 00점 입니다." 형태로 출력
 // 1. 파일 불러오기
 // 절대경로 vs 상대경로
 // 절대경로: 루트 (윈도우에서는 C드라이브)에서부터 파일 위치까지 총 경로
 // 상대경로: 현재 위치에서의 경로. 현재 경로 -> 
 File txtFile = File('students.txt');
 String content = await txtFile.readAsString();
 // 2. 첫번째 줄 불러오기
 // split 함수
 // - Stirng 클래스가 가지고 있는 메서드
 // - 인자로 넘겨준 문자열을 기준으로 분리해서 List에 만들어줌
 // lines : ["홍길동,90", "김철수, 80", "지은성, 100", ...]
List<String> lines = content.split('\n');
List<Student> studentList = [];

for(String nameAndScore in lines){
  // print(lines[0]);
// String gildong = lines[0];
 // 3. 이름과 점수 구분짓기
 // nameAndScoreList : ["홍길동", "90"]
List<String> nameAndScoreList = nameAndScore.split(',');
// print(nameAndScoreList[0]);
// print(nameAndScoreList[1]);
String name = nameAndScoreList[0];
// int.parse(문자열) => 숫자가 들어가있는 문자열을 숫자형태로 바꿔줌
// "ABC"라는 문자열을 파싱해서 에러났을 때 null이 반환되는데 null일땐 0을 abc라는 변수를 넣어라
// int abc = int.tryParse("ABC") ?? 0;
int score = int.tryParse(nameAndScoreList[1]) ?? 0;
print(name);
print(score);
// 이름과 점수를 담아 객체 만들기
Student s = Student(name, score);
}
}

class Student{
  String name;
  int score;
  Student(this.name, this.score);
}
