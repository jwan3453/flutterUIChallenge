import 'package:flutter/material.dart';
import 'package:flutteruichallenges/shopping/shopping.dart';
import 'package:flutteruichallenges/realestate/realEstate.dart';
import 'package:flutteruichallenges/bookstore/bookStore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
    {
      'title':'Book Store',
      'object': new BookStore(),
    }, 
    {
      'title':'Online Shopping',
      'object': new Shopping(),
    }, 
    {
      'title': 'Real Estate',
      'object': new RealEstate(),
    }
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
            title: new Text('${items[index]['title']}'),
            onTap: () {
               Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => items[index]['object']),
              );
            },
            selected: true,
          );
        },
      )
    );
  }
}
