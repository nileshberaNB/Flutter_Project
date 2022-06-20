import 'package:flutter/material.dart';

import 'amazon_clone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstApp',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const AmazonClone()
    );
  }
}




