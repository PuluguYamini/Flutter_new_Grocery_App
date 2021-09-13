import 'package:flutter/material.dart';
import './methods/loginpage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Grocery Application",
      home: LogoPage(),
      theme: ThemeData( primaryColor: Colors.green,
        canvasColor: Colors.green,
        accentColor: Colors.green,
        accentColorBrightness: Brightness.dark
      ));
  }
}
