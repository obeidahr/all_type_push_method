import 'package:all_type_push_method/pages/home.dart';
import 'package:all_type_push_method/pages/screen1.dart';
import 'package:all_type_push_method/pages/screen2.dart';
import 'package:all_type_push_method/pages/screen3.dart';
import 'package:flutter/material.dart';

main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.route,
      routes: {
        Home.route:(context) => Home(),
        Screen1.route:(context) => Screen1(),
        Screen2.route:(context) => Screen2(),
        Screen3.route:(context) => Screen3(),
      },
    );
  }
}