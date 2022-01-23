import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music/music.dart';

import 'constants/constants.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {


    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
        systemNavigationBarColor: systemNavigationBarcolor,
    ));
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Music(),
    );
  }
}