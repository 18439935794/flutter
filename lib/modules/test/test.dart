import 'package:flutter/material.dart';
import 'package:flutter_first/modules/home/detail.dart';

class  TestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(length: choices.length, child: new  Scaffold(
        appBar: new AppBar(

          title: const  Text('首页'),

//
//bottom: new TabBar(
//  isScrollable: true,
//  tabs: choices.map((Choice choice) {
//    return new Tab(
//      text: choice.title,
//      icon: new Icon(choice.icon),
//    );
//  }).toList(),
//),
        ),
body: new TabBarView(children: choices.map((Choice choice){
  return new Padding(padding: const EdgeInsets.all(15.0),
    child: new  ChoiceCard(choice:choice),

    );

}).toList(),

      ),
      ),
      ),
    );
  }
}


//class TestState
//
class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;
}
const List<Choice> choices = const <Choice>[
  const Choice(title: 'CAR', icon: Icons.directions_car),
  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
  const Choice(title: 'BOAT', icon: Icons.directions_boat),
  const Choice(title: 'BUS', icon: Icons.directions_bus),
  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
  const Choice(title: 'WALK', icon: Icons.directions_walk),
];
class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice }) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
//            new Icon(choice.icon, size: 128.0, color: textStyle.color),
////            new Text(choice.title, style: textStyle),



            FlatButton(
              child: Text("请先登陆哦"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由
                Navigator.push( context,
                    new MaterialPageRoute(builder: (context) {
                      return new NewRoute();
                    },
                      fullscreenDialog: true,//true:垂直方向切入，false：水平方向切入
                    ));
              },
            ),




          ],
        ),
      ),
    );
  }
}
