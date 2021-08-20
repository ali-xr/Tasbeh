import 'package:flutter/material.dart';
import 'package:project/tasbeh/tasfile.dart';
// import 'package:project/tasbeh/tasfile.dart';

void main() async {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/head',
      routes: {
        '/head': (context) => TasFile(),
      },
    );
  }
}
