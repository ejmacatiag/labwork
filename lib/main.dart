import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:labwork_1/screens/text.dart';

void main(){
  runApp(textApp());
}
class textApp extends StatelessWidget {
  const textApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: textScreen(),
    );
  }
}