import 'package:flutter/material.dart';
import 'package:flutteruichallenges/shopping.dart';
import 'package:flutteruichallenges/animate.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = [
    'enterprise ', 
    'furnature', 
    'sport', 
    'techology', 
    'shopping', 
    'news', 
    'blog'
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return new ListTile(
            title: new Text('${items[index]}'),
            onTap: () {
               Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new Shopping()),
              );
            },
            selected: true,
          );
        },
      )
    );
  }
}
