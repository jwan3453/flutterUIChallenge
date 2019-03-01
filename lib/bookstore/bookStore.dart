import 'package:flutter/material.dart';

class BookStore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      
      child: Container(
        color: Colors.white,
        child:ListView(
          padding:EdgeInsets.fromLTRB(20, 20, 20, 20),
          children:[
            Text(
              'ENJOY READING',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
            ),
            Container(
              margin:EdgeInsets.only(top:10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all( Radius.circular(20)),
                color: Color.fromRGBO(247, 247, 247, 0.9),
              ),
              height: 40,
              padding: EdgeInsets.fromLTRB( 10, 0, 10, 0),
              child:Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Please enter a search term',
                      ),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
                      )
                    ),
                  ),
                  ImageIcon( new AssetImage("assets/bookStore/search.png"),size: 30, color: Color.fromRGBO(46,165,158,1))
                ]
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:15),
              padding:EdgeInsets.all(4),
              decoration: new BoxDecoration(
                //border: new Border.all(color: Color.fromRGBO(2,111,150,1)),
                borderRadius: new BorderRadius.all(new Radius.circular(8)),
              ),
              child:Stack(
                alignment: AlignmentDirectional.centerEnd,
                children:[
                  Image.asset(
                    "assets/bookStore/book_cover.jpeg",
                    width:MediaQuery.of(context).size.width - 24,
                  ),
                  Positioned(
                    top:15,
                    left:15,
                    child:SizedBox(
                      width: 200,
                      child: Text('Child Picture Book', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Code128', color: Color.fromRGBO(25,107,155,1), fontSize: 26.0))
                    ),
                  ),    
                  Positioned(
                    bottom:15,
                    left:15,
                    child: RaisedButton(
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                      padding: const EdgeInsets.all(8.0),
                      textColor: Colors.white,
                      color: Color.fromRGBO(251,91,57,1),
                      onPressed: (){},
                      child: new Text("click to view"),
                    )
                  )             
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children:[
                    ImageIcon( new AssetImage("assets/bookStore/list.png"),size: 30, color: Color.fromRGBO(29,148,219,1)),
                    Text(
                      'Book List',
                      style: TextStyle(color: Color.fromRGBO(164,164,164,1), fontSize: 12.0, height:1.5)
                    )
                  ],
                ),
                Column(
                  children:[
                    ImageIcon( new AssetImage("assets/bookStore/reading.png"),size: 30, color: Color.fromRGBO(29,148,219,1)),
                    Text(
                      'Reading',
                      style: TextStyle(color: Color.fromRGBO(164,164,164,1), fontSize: 12.0, height:1.5)
                    )
                  ],
                ),
                Column(
                  children:[
                    ImageIcon( new AssetImage("assets/bookStore/space.png"),size: 30, color: Color.fromRGBO(29,148,219,1)),
                    Text(
                      'Space',
                      style: TextStyle(color: Color.fromRGBO(164,164,164,1), fontSize: 12.0, height:1.5)
                    )
                  ],
                ),
                Column(
                  children:[
                    ImageIcon( new AssetImage("assets/bookStore/more.png"),size: 30, color: Color.fromRGBO(29,148,219,1)),
                    Text(
                      'More',
                      style: TextStyle(color: Color.fromRGBO(164,164,164,1), fontSize: 12.0, height:1.5)
                    )
                  ],
                ),                                                
              ],
            ),
            new Container(
              margin:EdgeInsets.fromLTRB(0, 15, 0, 15),
              height: 1.5,
              color: Color.fromRGBO(247, 247, 247, 1.0),
            ),
            Row(
              children:[
                Container(
                  margin:EdgeInsets.only(right:10),
                  width:5,
                  height: 20,
                  color: Color.fromRGBO(29,148,219,1),
                ),
                Text(
                  'RECOMMAND',
                  style: TextStyle(color: Color.fromRGBO(164,164,164,1), fontSize: 20.0)
                )   
              ]
            ),

            new BookItem (bookName:'The Jungle book kids.', desc:'This book is really good, This book is really good. This book is really good.', bookCover:'assets/bookStore/book1.jpg'),
            new BookItem (bookName:'Why does it rain?', desc:'This book is really good, This book is really good. This book is really good.', bookCover:'assets/bookStore/book2.jpg'),
            new BookItem (bookName:'The Jungle book kids.', desc:'This book is really good, This book is really good. This book is really good.', bookCover:'assets/bookStore/book1.jpg'),
            new BookItem (bookName:'The Jungle book kids.', desc:'This book is really good, This book is really good. This book is really good.', bookCover:'assets/bookStore/book2.jpg'),
          ]
        ),
      )
    );
  }
}
 

 class BookItem extends StatelessWidget {
   BookItem({Key key,this.bookName, this.desc, this.bookCover}) : super(key:key);
    final String bookName;
    final String desc;
    final String bookCover;
    @override
    Widget build(BuildContext context) {
      return Container(
        //margin:EdgeInsets.only(top:20),
        child: Stack(
          children: [
            Column(
              children:[
                Padding(
                  padding:EdgeInsets.only(top:20),
                ) ,
                Container(
                  height:120,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255,255,255,1),
                    borderRadius: new BorderRadius.all(new Radius.circular(8)),
                  ),
                  child:Row(
                    children:[
                      Container(
                        height: 140,
                        width:100,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Container(
                          height: 140,
                          padding:EdgeInsets.fromLTRB(10,10, 10, 0),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Text(
                                bookName,
                                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18.0)
                              ),
                              Padding(
                                padding:EdgeInsets.only(top:10),
                              ),
                              Text(
                                desc,
                                style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromRGBO(193,193,193,1), fontSize: 12.0),
                                overflow: TextOverflow.fade,
                                  softWrap: true,
                              ),
                              Padding(
                                padding:EdgeInsets.only(top:3),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  RaisedButton(
                                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                                    padding: const EdgeInsets.all(4.0),
                                    textColor: Colors.white,
                                    color: Color.fromRGBO(253,192,56,1),
                                    onPressed: (){},
                                    child: new Text("Borrow it"),
                                  )
                                ]
                              )
                            ]
                          )
                        )
                      )
                    ]
                  ),
                ),
              ]
            ),
            Positioned(
              bottom:0,
              left:0,
              child:Image.asset(
                bookCover,
                width:100,
                height:120,
              ),
            ),
          ]
        )
      );
    }
 }


          