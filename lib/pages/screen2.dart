import 'package:all_type_push_method/pages/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  static final route = '/screen2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen2'), 
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('open page 3'),
              onPressed: ()=> Navigator.of(context).pushNamed('/screen3'),
            ),
            RaisedButton(
              child: Text('open page 3'),
              onPressed: ()=> null,
            ),

          ],
        ),
      ),
    );
  }
}