import 'package:flutter/material.dart';
import 'package:swipedetector/swipedetector.dart';
//import 'package:my_app/Homescreen.dart';

final details = [
  {
    "id": 1,
    "img": 'assets/flat1.jpeg',
    "location": "JP NAGARA 5TH PHASE",
    "subject":
        "[REMINDER] This october start the skills and product in the wishlist is availabe",
    "content":
        "pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
    "time": "10:00 am",
    "status": false
  },
  {
    "id": 2,
    "img": 'assets/flat2.jpeg',
    "location": "BANSHANKHRI GOPALAN LAYOUT",
    "subject": "overtime from mastering skeuomorphic description",
    "content":
        "pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
    "time": "10:00 am",
    "status": false
  },
  {
    "id": 3,
    "img": 'assets/flat3.jpeg',
    "location": "JAY NAGARA ",
    "subject": "product in the wishlist is availabe",
    "content":
        "pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
    "time": "10:00 am",
    "status": false
  },
  {
    "id": 4,
    "img": 'assets/flat4.jpeg',
    "location": "ELECTRONIC CITY PHASE 1",
    "subject": "product in the wishlist is availabe",
    "content":
        "pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
    "time": "10:00 am",
    "status": false
  },
  {
    "id": 5,
    "img": 'assets/flat5.jpeg',
    "location": "MARATHANHALLI",
    "subject": "product in the wishlist is availabe",
    "content":
        "pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
    "time": "10:00 am",
    "status": false
  },
  {
    "id": 6,
    "img": 'assets/flat6.jpeg',
    "location": "WHITE FEILD",
    "subject": "product in the wishlist is availabe",
    "content":
        "pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
    "time": "10:00 am",
    "status": false
  },
  {
    "id": 7,
    "img": 'assets/1.jpeg',
    "location": "BESIDE PHENIX MALL",
    "subject": "product in the wishlist is availabe",
    "content":
        "pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
    "time": "10:00 am",
    "status": false
  },
  {
    "id": 8,
    "img": 'assets/2.jpeg',
    "location": "BTM LAYOUT",
    "subject": "product in the wishlist is availabe",
    "content":
        "pailable in the app with a discount of INR 5000 using HDFC Credit card/Debit card",
    "time": "10:00 am",
    "status": false
  }
];

// class Photo {
//   static var details = [
//     'assets/flat1.jpeg',
//     'assets/flat2.jpeg',
//   ];
// }

// var assetsImage = AssetImage(
//     '/Users/abhineet/project/flutter_project/my_app/assets/Moscow.jpg');
// var image = Image(image: assetsImage, fit: BoxFit.cover);

class Login extends StatefulWidget {
  @override
  Loginscreen createState() => new Loginscreen();
}

class Loginscreen extends State<Login> {
  int count = 0;
  int index = 0;
  final PageController controller = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Home"),

          //  leading: IconButton(
          //     icon: Icon(Icons.arrow_back),
          //     onPressed: (){
          //       Navigator.push(
          //                   context,
          //                   MaterialPageRoute(
          //                     builder: (context) => Homescreen(),
          //                   ),
          //       );
          //     },
          //   )
        ),
        body: PageView.builder(
          // physics: ClampingScrollPhysics(),
          itemCount: details.length,
          itemBuilder: (context, i) {
            //final item = details[i].toString();
            return Dismissible(
              // Specify the direction to swipe and delete
              direction: DismissDirection.vertical,

              onDismissed: (direction) {
                if (direction == DismissDirection.up) {
                  setState(() {
                    if (index != details.length - 1) index = index + 1;
                  });
                } else if (direction == DismissDirection.down) {
                  setState(() {
                    if (index != 0) index = index - 1;
                  });
                }
                // Removes that item the list on swipwe
                //  setState(() {
                // // details.removeAt(index);

                //    print(direction);
                //    print(index);
                // });
                // Shows the information on Snackbar
                // Scaffold.of(context)
                //     .showSnackBar(SnackBar(content: Text("$item dismissed")));
              },
              background: Container(
                child: index == 0
                    ? Card()
                    : Card(
                        color: Colors.white,
                        elevation: 4.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(details[index - 1]['img']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  child: new Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    details[index - 1]['location'],
                                  ),
                                  Text(
                                    details[index - 1]['location'],
                                  ),
                                ],
                              )),
                            )
                          ],
                        ),
                      ),
              ),
              secondaryBackground: Container(
                child: index == details.length - 1
                    ? Card()
                    : Card(
                        color: Colors.white,
                        elevation: 4.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage(details[index + 1]['img']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  child: new Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    details[index + 1]['location'],
                                  ),
                                  Text(
                                    details[index + 1]['location'],
                                  ),
                                ],
                              )),
                            )
                          ],
                        ),
                      ),
              ),
              child: SwipeDetector(
                onSwipeLeft: () {
                  setState(() {
                    count ++;
                  });
                },
                onSwipeRight: () {
                  setState(() {
                    count--;
                  });
                },
                child: count == 0
                    ? Card(
                        color: Colors.white,
                        elevation: 4.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(details[index]['img']),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0)),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  child: new Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    details[index]['location'],
                                  ),
                                  Text(details[index]['id'].toString()),
                                  Text(
                                    details[index]['location'],
                                  ),
                                ],
                              )),
                            )
                          ],
                        ),
                      )
                    : (count <= 0
                        ? Card(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              details[index + 2]['img']),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      child: new Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        details[index]['location'],
                                      ),
                                      Text(details[index]['id'].toString()),
                                      Text(
                                        details[index]['location'],
                                      ),
                                    ],
                                  )),
                                )
                              ],
                            ),
                          )
                        : Card(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              details[index + 3]['img']),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8.0),
                                          topRight: Radius.circular(8.0)),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      child: new Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        details[index]['location'],
                                      ),
                                      Text(details[index]['id'].toString()),
                                      Text(
                                        details[index]['location'],
                                      ),
                                    ],
                                  )),
                                )
                              ],
                            ),
                          )),
              ),
              key: UniqueKey(),
            );
          },
        ));
  }
}
