import 'dart:convert';

import 'package:final_07610610/models/api_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class QuizDetailPage extends StatefulWidget {
  const QuizDetailPage({Key? key}) : super(key: key);

  @override
  State<QuizDetailPage> createState() => _QuizDetailPage();
}
class _QuizDetailPage extends State<QuizDetailPage>{

  
  @override
  void initState() {
    super.initState();
    _loadQuiz();
  }

  _loadQuiz() async {
    final url = Uri.parse('https://cpsu-test-api.herokuapp.com/quizzes');
    final response = await http.get(
        url,
        headers: {'id': '07610610'}
    );
    var json = jsonDecode(response.body);
    var apiResult = ApiResult.fromJson(json);
    
    String status = json['status'];
    String? message = json['message'];
    List<dynamic> data = json['data'];
    
    print('Status: $status, Message: $message, data: $data');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Word Quiz Game'),
      ),
      body: Stack(
        children: [
          ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: FoodData.list.length,
            itemBuilder: (context, index) => _buildListItem(context, index),
          ),

        ],
      ),
    );//ใส่ไว้ก่อนเฉยๆ กันข้างบนแดง
  }
}