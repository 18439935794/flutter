import 'package:flutter/material.dart';
//import 'package:flutter_first/modules/home/detail.dart';

class  DengluRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }



//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("aaaaa"),
//      ),
//      body: Center(
//        child: Text('Weekend is coming'),
//      ),
//
//
////      body: new Column(
////        children: <Widget>[
////          new Text("用户名"),
////          new Text("密码"),
////          FlatButton(child: Text("登陆"),
////            onPressed: (){
////            Navigator.push(context,
////                new MaterialPageRoute(builder: (context){
////                  return new  NewRoute();
////                })
////            );
////          }, ),
////        ],
////      ),
//    );
//  }
}