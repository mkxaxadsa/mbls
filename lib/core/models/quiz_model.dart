import 'package:MestlyBest/core/models/question_model.dart';

class Quiz {
  final String name;
  final List<Question> questions;
  const Quiz({
    this.name =
        "No-Name", //TODO change this when in design will be add functionality for this parameter
    required this.questions,
  });
}
