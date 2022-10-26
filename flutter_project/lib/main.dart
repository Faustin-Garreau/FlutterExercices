import 'package:flutter/material.dart';
import 'package:flutter_project/widgets/academy_page.dart';
import 'package:flutter_project/widgets/button_exo2.dart';
import 'package:flutter_project/widgets/card_exo1.dart';
import 'package:flutter_project/widgets/exo4/getx_exo4_bindings.dart';
import 'package:get/get.dart';

import 'widgets/exo4/getx_exo4_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      color: Colors.red,
      getPages: [
        GetPage(
          name: "/exo4",
          page: () => const GetExo4View(),
          binding: GetxExo4Bindings(),
        )
      ],
      initialRoute: "exo4",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const AcademyPage(),
    );
  }
}
