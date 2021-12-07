import 'package:all_type_push_method/pages/home.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  static final route = '/screen3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen3'), 
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('open page 4'),
              onPressed: ()=> null,
            ),
            RaisedButton(
              child: Text('Go Home'),
              onPressed: ()=> Navigator.of(context).pushNamedAndRemoveUntil('/screen3',ModalRoute.withName('/')),
            ),
            RaisedButton(
              child:Text('Back') ,
              onPressed:()=> Navigator.of(context).pop() ,
            ),
            RaisedButton(
                child: Text('pop until home'),
                onPressed: ()=> Navigator.of(context).popUntil(ModalRoute.withName('/'))
            ),
          ],
        ),
      ),
    );
  }
}