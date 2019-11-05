import 'package:flutter/material.dart';
//import 'package:my_app/main.dart';

var assetsImage = AssetImage(
    '/Users/abhineet/project/flutter_project/my_app/assets/Moscow.jpg');
var image = Image(image: assetsImage, fit: BoxFit.cover);
class Hello extends StatefulWidget {
  final Map details;
  Hello({this.details});
  @override
  Gmail createState() => new Gmail(details);
}

class Gmail extends State<Hello> {
  // final index;
  // var sender;
  // var subject;
  final Map details;
  Gmail(this.details);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:
            Padding(padding: EdgeInsets.only(left: 8)), 
        centerTitle: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            //print(index);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.archive),
            onPressed: () {
              print("more options");
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              print("more options");
            },
          ),
          IconButton(
            icon: Icon(Icons.local_post_office),
            onPressed: () {
              print("more options");
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              print("more options");
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left:12.0),
                  child: Text(details["subject"].toString(),
                  //overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400,
                          )),
                ),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    
                  });
                   if (details['status'] ==true) {
                                              details['status'] =
                                                  false;
                                            } else {
                                              details['status'] =
                                                  true;
                                            }
               },
                              child: Padding(
                  padding: const EdgeInsets.only(right:12.0),
                  child: details['status']
                                                ? Icon(Icons.star_border)
                                                : Icon( 
                                                    Icons.star,
                                                    color: Color(0xFFf3ce13),
                                                    // child: Icon((Icon(Icons.star_border,color:Colors.grey):(details[index]['status']) ? Icon(Icons.star,color: Color(0xFFf3ce13),) : Icon(Icons.star_border,color:Colors.grey)),
                                                  )
                ),
              ),
            ],
          ),
          SizedBox(
                height: 8,
              ),
              // SizedBox(
              //   width: 20,
              // ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:12.0),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2),
                  height: 20,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.grey[200],
                  ),
                  child: Text("inbox"),
                ),
              )
            ],
          ),
          SizedBox(
                height: 8,
              ),
          Row( mainAxisAlignment:
              MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(details['color']),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    details['sender'].toString()[0],
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  alignment: Alignment(0, 0),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  
                  Text(
                    details['sender'].toString(),
                    softWrap: true,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                  ),
                  Text(
                    "to me",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        details['time'],
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),

              SizedBox(
                width: 20,
              ),
                      Text(
                        "view details",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 20,
              ),
              
              IconButton(
                icon: Icon(Icons.reply),
                onPressed: () {
                  print("reply");
                },
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  print("more options");
                },
              ),
            ],
          ),
           SizedBox(
                height: 8,
              ),
        Padding(
          padding: const EdgeInsets.only(left:10.0,right: 10),
          child: Container(
            child: Image.asset('assets/Alexa.png'),
          ),
        )
        ],
      ),
    );
  }
}
