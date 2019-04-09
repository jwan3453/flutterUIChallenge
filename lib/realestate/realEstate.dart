import 'package:flutter/material.dart';

class RealEstate extends StatelessWidget { 
    @override
  Widget build(BuildContext context) {
    return new Material(

      type: MaterialType.transparency,
      child: Container(
        decoration: new BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children:[
            Container(
              decoration: new BoxDecoration(
                color: Colors.white,
              ),              
              child:Stack(
                 //fit: StackFit.expand,
                //alignment: AlignmentDirectional.center,
                children: <Widget> [
                  Column(
                    children:[
                      new Image.asset(
                        "assets/realEstate/house.jpg",
                      ),
                      Container(
                        padding:EdgeInsets.fromLTRB(30, 50, 30, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:[
                            Text(
                              'Bright & Well Equipment Office in Downtown Montreal',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(56,82,82,1)),
                            ),
                            Padding(
                              padding:EdgeInsets.only(bottom: 20),
                            ),
                            Text(
                              '960 St. Marks Ave, Suite 305, H2G 9N7',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color.fromRGBO(168,177,177,1)),
                            ),
                            Padding(
                              padding:EdgeInsets.only(bottom: 20),
                            ),
                            Text(
                              'This space has tons of natural light and great views of the Downtown. Outfited with all of the necessary productivity tools: whiteboards, wifi, presentation screen, it it great for larger groups or to simply get out of the office.',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color.fromRGBO(168,177,177,1)),
                            ),   
                            Padding(
                              padding:EdgeInsets.only(bottom: 30),
                            ),          
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                                 Text(
                                  '\$9500,000',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Color.fromRGBO(168,177,177,1)),
                                ), 
                                new RaisedButton(
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                                  padding: const EdgeInsets.all(8.0),
                                  textColor: Colors.white,
                                  color: Color.fromRGBO(27,157,150,1),
                                  onPressed: (){},
                                  child: new Text("BUY"),
                                )
                              ]
                            ),                                          
                          ],
                        )
                      ),                        
                    ]
                  ),
                  new Positioned(
                    top:140,
                    right:30,
                    child: Container (
                      padding: EdgeInsets.fromLTRB(8, 13, 8, 13),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.all(new Radius.circular(20)),
                        color: Color.fromRGBO(255,255,255, 1),
                      ),
                      height:40,
                      width: 120,
                      child: Text(
                        'Add to Wishlist',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color.fromRGBO(27,157,150,1)),
                      ),
                    )
                  ),
                  new Positioned(
                    top:MediaQuery.of(context).size.width - 30,
                    left:30,
                    child: Container (
                      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.all(new Radius.circular(30)),
                        color: Color.fromRGBO(255,255,255, 1),
                      ),
                      height:60,
                      width: 220,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: new Image.asset(
                              "assets/realEstate/owner.png",
                              fit: BoxFit.cover,
                              width:35,
                              height: 35,
                            )
                          ),
                          Padding(
                            padding:EdgeInsets.only(right:10)
                          ),
                          Text(
                            'Stella Wangs',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Color.fromRGBO(27,157,150,1)),
                          ),
                          Padding(
                            padding:EdgeInsets.only(right:20)
                          ),
                          ImageIcon( new AssetImage("assets/realEstate/phone.png"),size: 35, color: Color.fromRGBO(46,165,158,1))
                        ]
                      ),
                    )
                  ),
               
                ],
              )
            )
          ]
        )
      )
    );
  }
}