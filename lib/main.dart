import 'dart:convert';

import 'package:final_07610610/models/api_result.dart';
import 'package:final_07610610/page/quiz_details_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word Quiz Game',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            fontSize: 22.0,
            //fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      home: const QuizDetailPage(),
    );
  }
}