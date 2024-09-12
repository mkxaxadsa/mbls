// ignore_for_file: public_member_api_docs, sort_constructors_first
class Question {
  final String question;
  final String qustionImage;
  final String answerA;
  final String answerB;
  final String answerC;
  final String answerD;
  const Question({
    required this.question,
    required this.qustionImage,
    required this.answerA,
    required this.answerB,
    required this.answerC,
    required this.answerD,
  });

  List<String> get variants => [answerA, answerB, answerC, answerD];

}
