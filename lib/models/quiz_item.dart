import 'dart:convert';

class QuizItem{
  final String image;
  final String answer;
  final var choice_list;

  QuizItem({
    required this.image,
    required this.answer,
    required this.choice_list,
  });

  factory QuizItem.fromJson(Map<String, dynamic> json){
    return QuizItem(
      image:  json['image'],
      answer: json['answer'],
      choice_list: json['choice_list']
    );
  }

  QuizItem.fromJson2(Map<String, dynamic> json)
  : image = json['image'],
    answer = json['answer'],
    choice_list = json['choice_list'];

  @override
  String toString() {
  List<String>.from(json[choice_list]);
  return '$choice_list';
  }

}