import 'package:all_type_push_method/pages/screen1.dart';
import 'package:all_type_push_method/pages/screen3.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static final route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'), 
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('open page 1'),
              onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (c)=>Screen1())),
            ),
            RaisedButton(
              child: Text('open page 1'),
              onPressed: ()=> null,
            ),
            RaisedButton(
              child:Text('Back') ,
              onPressed:(){
                if(Navigator.of(context).canPop()){
                  Navigator.of(context).pop();
                }else{
                  showDialog(context: context, builder:(c)=>AlertDialog(content: Text("can't pop"),));
                }
              },
            ),
            RaisedButton(
              child: Text('Go to screen 3'),
              onPressed:()=>Navigator.of(context).popAndPushNamed(Screen3.route),
            ),
          ],
        ),
      ),
    );
  }
}