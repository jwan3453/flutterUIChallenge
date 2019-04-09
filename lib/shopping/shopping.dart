import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      type: MaterialType.transparency,
      child: 
      Container(
        color: Color.fromRGBO(246, 247, 246, 1.0),
        child: ListView(
          children:[
            Container(
              child:Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget> [
                  new Image.asset(
                    "assets/shopping/coat.png",
                    fit: BoxFit.cover,
                  ),
                  new Positioned(
                    right: 15.0,
                    top: 45.0,
                    child: ImageIcon( new AssetImage("assets/shopping/heart.png"),size: 24, color: Colors.red),
                  ),
                  new Positioned(
                    
                    bottom: 10.0,
                    child: Center ( 
                      child:Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:[
                          Container(
                            height: 8,
                            width: 8,
                            margin:EdgeInsets.only(right:10),
                              decoration: new BoxDecoration(
                                color:  Color.fromRGBO(39, 180, 125, 1.0),
                                borderRadius: new BorderRadius.all(new Radius.circular(8)),
                              ),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            margin:EdgeInsets.only(right:10),
                              decoration: new BoxDecoration(
                                color:  Color.fromRGBO(190, 196, 194, 1.0),
                                borderRadius: new BorderRadius.all(new Radius.circular(4)),
                              ),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            margin:EdgeInsets.only(right:10),
                              decoration: new BoxDecoration(
                                color:  Color.fromRGBO(190, 196, 194, 1.0),
                                borderRadius: new BorderRadius.all(new Radius.circular(4)),
                              ),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                            margin:EdgeInsets.only(right:10),
                              decoration: new BoxDecoration(
                                color:  Color.fromRGBO(190, 196, 194, 1.0),
                                borderRadius: new BorderRadius.all(new Radius.circular(4)),
                              ),
                          ),
                          Container(
                            height: 4,
                            width: 4,
                              margin:EdgeInsets.only(right:10),
                              decoration: new BoxDecoration(
                                color:  Color.fromRGBO(190, 196, 194, 1.0),
                                borderRadius: new BorderRadius.all(new Radius.circular(4)),
                              ),
                          ),                                                                 
                        ]
                      )
                    )
                  )
                ],
              ), 
            ),
            Text(
              'BLACKJACK Coat',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Padding(
              padding:EdgeInsets.all(2),
            ),
            Text(
              '\$210',
              textAlign: TextAlign.center,
              style: TextStyle( fontWeight: FontWeight.bold, fontSize: 18,color: Color.fromRGBO(237, 0, 110, 1.0)),
            ),
            new ProductionSelection(),
            Container(
              margin:EdgeInsets.only(top: 2),
              padding:EdgeInsets.fromLTRB(70, 30, 70,30),
              color: Colors.white, 
              child:Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  Container(
                    height: 20,
                    width: 20,
                    margin:EdgeInsets.only(right:10),
                      decoration: new BoxDecoration(
                        color:  Color.fromRGBO(121, 132, 128, 1.0),
                        borderRadius: new BorderRadius.all(new Radius.circular(20)),
                      ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    margin:EdgeInsets.only(right:10),
                      decoration: new BoxDecoration(
                        color:  Color.fromRGBO(100, 160, 107, 1.0),
                        borderRadius: new BorderRadius.all(new Radius.circular(20)),
                      ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    margin:EdgeInsets.only(right:10),
                      decoration: new BoxDecoration(
                        color:  Color.fromRGBO(125, 197, 255, 1.0),
                        borderRadius: new BorderRadius.all(new Radius.circular(20)),
                      ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    margin:EdgeInsets.only(right:10),
                      decoration: new BoxDecoration(
                        color:  Color.fromRGBO(253, 155, 142, 1.0),
                        borderRadius: new BorderRadius.all(new Radius.circular(20)),
                      ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                      margin:EdgeInsets.only(right:10),
                      decoration: new BoxDecoration(
                        color:  Color.fromRGBO(237, 213, 135, 1.0),
                        borderRadius: new BorderRadius.all(new Radius.circular(20)),
                      ),
                  ),                                                                 
                ]
              )
            ),
            Container (
              margin:EdgeInsets.only(top: 8),
              padding:EdgeInsets.all(20),
              color: Colors.white,
              child:Column(
                children: <Widget>[
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Reviews',
                        textAlign: TextAlign.center,
                        style: TextStyle( fontWeight: FontWeight.bold,fontSize: 16,color: Color.fromRGBO(29, 41, 62, 1.0)),
                      ),
                      Text(
                        'More',
                        textAlign: TextAlign.center,
                        style: TextStyle( fontSize: 14,color: Color.fromRGBO(189, 196, 205, 1.0)),
                      ),  
                    ],
                  ),
                  new Container(
                    margin:EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: 1.5,
                    color: Color.fromRGBO(247, 247, 247, 1.0),
                  ),
                  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children:[
                          ClipOval(
                            child: new Image.asset(
                              "assets/shopping/user1.png",
                              fit: BoxFit.cover,
                              width:35,
                              height: 35,
                            )
                          ),
                          Padding(
                            padding:EdgeInsets.only(right:5)
                          ),

                          Text(
                            'Mintion',
                            textAlign: TextAlign.center,
                            style: TextStyle( fontSize: 16,color: Color.fromRGBO(29, 41, 62, 1.0)),
                            
                          ),
                        ]
                      ),

                      Row(
                        children:[
                          ImageIcon( new AssetImage("assets/shopping/star.png"),size: 18, color: Color.fromRGBO(253, 167, 72, 1.0)),
                          ImageIcon( new AssetImage("assets/shopping/star.png"),size: 18, color: Color.fromRGBO(253, 167, 72, 1.0)),
                          ImageIcon( new AssetImage("assets/shopping/star.png"),size: 18, color: Color.fromRGBO(253, 167, 72, 1.0)),
                          ImageIcon( new AssetImage("assets/shopping/star.png"),size: 18, color: Color.fromRGBO(253, 167, 72, 1.0)),                         
                          ImageIcon( new AssetImage("assets/shopping/star.png"),size: 18, color: Color.fromRGBO(253, 167, 72, 1.0)),
                        ]
                      ),
                    ],
                  ),
                  Padding(
                    padding:EdgeInsets.only(top:10)
                  ),
                  Text(
                    "It's comfortable close, and I really like the soft material it used inside the coat. And it has a quite a lot pocket which is plkus point. Totally worth it.",
                    textAlign: TextAlign.left,
                    style: TextStyle( fontSize: 14,color: Color.fromRGBO(189, 196, 205, 1.0)),
                    
                  ),
                  Padding(
                    padding:EdgeInsets.only(top:8)
                  ),
                  Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children:[
                      new Image.asset(
                        "assets/shopping/item_sepc.jpeg",
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.width * 0.28,
                      ),
                    new Image.asset(
                        "assets/shopping/item_sepc.jpeg",
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.width * 0.28,
                      ),
                    new Image.asset(
                        "assets/shopping/item_sepc.jpeg",
                        fit: BoxFit.fill,
                        width: MediaQuery.of(context).size.width * 0.28,
                        height: MediaQuery.of(context).size.width * 0.28,
                      ),
                    ]
                  )
                ],
              )
            )
          ]
        ),
      )
    );
  }
}


class ProductionSelection extends StatefulWidget {
  
  @override
  _ProductionSelection createState() => _ProductionSelection();
}

class _ProductionSelection  extends State<ProductionSelection>  with SingleTickerProviderStateMixin{ 

  Animation<double> animation;
  AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 200 ), vsync: this);
    animation = new Tween(begin: 45.0, end: 230.0).chain(new CurveTween(curve: Curves.linear,)
     ).animate(controller)
      ..addListener(() {
        setState(()=>{});
      });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      margin:EdgeInsets.only(top: 15),
      color: Colors.white,    
      padding:EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Stack( 
        children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              FlatButton(
                onPressed: () {controller.reverse();},
                child: Text(
                'Select Colorsss',
                textAlign: TextAlign.center,
                style: TextStyle( fontSize: 18,color: Color.fromRGBO(29, 41, 62, 1.0)),)
              ),

              Container(
                width:2,
                height: 20,
                color:  Color.fromRGBO(243, 244, 244, 1.0),
              ),
              FlatButton(
                onPressed: () {controller.forward();},
                child: Text(
                'Select Size',
                textAlign: TextAlign.center,
                style: TextStyle( fontSize: 18,color: Color.fromRGBO(29, 41, 62, 1.0)),)
              ),
            ]
          ),
          new Positioned(
            left:animation.value,
            top: 38,
            child: Container(
              height:3,
              width:100,
              color:Color.fromRGBO(253, 167, 72, 1.0)
            ),
          )
        ]
      )
    );
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

}