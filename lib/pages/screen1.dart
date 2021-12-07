import 'package:all_type_push_method/pages/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  static final route = '/screen1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen1'), 
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('open page 2'),
              //onPressed: ()=> Navigator.of(context).pushNamed(Screen2.route),
              onPressed: () =>//Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (c)=> Screen2())) 
                                Navigator.of(context).pushReplacementNamed(Screen2.route),
            ),
            RaisedButton(
              child: Text('open page 2'),
              onPressed: ()=> null,
            ),
            RaisedButton(
              child:Text('Back') ,
              onPressed:()=> Navigator.of(context).maybePop() ,
              )

          ],
        ),
      ),
    );
  }
}