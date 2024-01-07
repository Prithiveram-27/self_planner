import 'package:flutter/material.dart';
import 'Home/ui/home_page.dart';
import './Common/common.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MaterialColor materialColor = convertColorToMaterialColor(Colors.black);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: materialColor,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
