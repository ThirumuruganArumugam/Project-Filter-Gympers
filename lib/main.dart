import 'package:flutter/material.dart';

import 'View.dart';


void main() {
  runApp( const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    // ignore: prefer_const_constructors
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}
