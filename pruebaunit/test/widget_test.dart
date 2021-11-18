// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pruebaunit/main.dart';

void main() {
  testWidgets(
      'MyWidget tiene un titulo y un mensaje', (WidgetTester tester) async {
        await tester.pumpWidget(const MyWidget(title: 'T', message: 'M'));
      });
}

class MyWidget extends StatelessWidget {
  final String title;
  final String message;
  const MyWidget({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext comtext) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
          appBar: AppBar(title: Text(title)),
          body: Center(child: Text(message))),
    );
  }
}
