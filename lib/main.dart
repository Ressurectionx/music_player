import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/music.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: const Color(0xff302b63),
        systemNavigationBarColor: Color(0xff08061d) ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        backgroundColor: Colors.purple.shade300,
      ),
      home: const Music(),
    );
  }
}