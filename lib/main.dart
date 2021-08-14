import 'package:flutter/material.dart';
import 'main_page.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social App',
      theme:ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.red,
      ),
      home:MainPage(),

    );
  }
}
