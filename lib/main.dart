import 'package:flutter/material.dart';
import 'package:test/widgets/academy_page.dart';
import 'package:test/widgets/button_exo2.dart';
import 'package:test/widgets/card_exo1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AcademyPage(),
    );
  }
}
