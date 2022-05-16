import 'package:flutter/material.dart';
import 'package:sampleproject/src/pages/home_page.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gradient Color',
      theme: ThemeData(
        primaryColor: const Color(0xffff0e35),
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}
