import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/music.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color(0xff4e03a7),systemNavigationBarColor: Color(0xff0a35ad ) ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.purple.shade300,
      ),
      home: Music(),
    );
  }
}