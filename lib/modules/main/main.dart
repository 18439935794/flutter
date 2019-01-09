import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_first/modules/login/login.dart';
import 'package:flutter_first/modules/home/detail.dart';
import 'package:flutter_first/modules/test/test.dart';

/*
void main() {
  runApp(
    new Center(
      child: new Text(
        'Hello, world!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}
*/

/*
void main() => runApp(new MyApp());




class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {


//  var list = ['apples', 'oranges', 'grapes', 'bananas', 'plums'];
//  list.forEach((i){
//  print(list.indexOf(i).toString() + ': ' + i);
//  });


  final _suggestions = <WordPair>[];


  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return new Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if (alreadySaved) {
            _saved.remove(pair);
          } else {
            _saved.add(pair);
          }
        });
      },
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          final tiles = _saved.map(
                (pair) {
              return new ListTile(
                title: new Text(
                  pair.asPascalCase,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = ListTile
              .divideTiles(
            context: context,
            tiles: tiles,
          )
              .toList();
          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Saved Suggestions'),
            ),
            body: new ListView(children: divided),
          );
        },
      ),
    );
  }
}*/
/*
class TabbedAppBarSample extends StatelessWidget {
 @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: choices.length,
        child: new  Scaffold(
        appBar: new AppBar(
          title: const Text('hello ZZ'),
          bottom: new TabBar(

              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return new Tab(
                  text: choice.title,
                  icon: new Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
   body: new TabBarView(
            children: choices.map((Choice choice) {
              return new Padding(
                padding: const EdgeInsets.all(16.0),
                child: new ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}




class Choice {
  const Choice({ this.title, this.icon });
  final String title;
  final IconData icon;

}

const List<Choice> choices = const <Choice>[
  const  Choice(title:'CAR',icon:Icons.directions_car),
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
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(new TabbedAppBarSample());
}
*/



//class TabbedAppBarSample extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      home: new DefaultTabController(
//        length: choices.length,
//        child: new Scaffold(
//          appBar: new AppBar(
//            title: const Text('Tabbed AppBar'),
//            bottom: new TabBar(
//              isScrollable: true,
//              tabs: choices.map((Choice choice) {
//                return new Tab(
//                  text: choice.title,
//                  icon: new Icon(choice.icon),
//                );
//              }).toList(),
//            ),
//          ),
//          body: new TabBarView(
//            children: choices.map((Choice choice) {
//              return new Padding(
//                padding: const EdgeInsets.all(16.0),
//                child: new ChoiceCard(choice: choice),
//              );
//            }).toList(),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
//class Choice {
//  const Choice({ this.title, this.icon });
//  final String title;
//  final IconData icon;
//}
//
//const List<Choice> choices = const <Choice>[
//  const Choice(title: 'CAR', icon: Icons.directions_car),
//  const Choice(title: 'BICYCLE', icon: Icons.directions_bike),
//  const Choice(title: 'BOAT', icon: Icons.directions_boat),
//  const Choice(title: 'BUS', icon: Icons.directions_bus),
//  const Choice(title: 'TRAIN', icon: Icons.directions_railway),
//  const Choice(title: 'WALK', icon: Icons.directions_walk),
//];
//
//class ChoiceCard extends StatelessWidget {
//  const ChoiceCard({ Key key, this.choice }) : super(key: key);
//
//  final Choice choice;
//
//  @override
//  Widget build(BuildContext context) {
//    final TextStyle textStyle = Theme.of(context).textTheme.display1;
//    return new Card(
//      color: Colors.white,
//      child: new Center(
//        child: new Column(
//          mainAxisSize: MainAxisSize.min,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            new Icon(choice.icon, size: 128.0, color: textStyle.color),
//            new Text(choice.title, style: textStyle),
//          ],
//        ),
//      ),
//    );
//  }
//}

void main() {

//runApp(NewRoute());

  runApp(
      new TestPage()
//      new NewRoute()


  );
}



















