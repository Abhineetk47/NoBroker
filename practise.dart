import 'package:flutter/material.dart';

void main() => runApp(MyApp());
List<String> content =["one","two","three","four","one","two","three","four","one","two","three","four","one","two","three","four"];
var assetsImage = AssetImage('/Users/abhineet/project/flutter_project/my_app/assets/Moscow.jpg');
var image = Image(image: assetsImage,
fit: BoxFit.cover);
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      home: Home(),
    );
  }
}
class Home extends StatelessWidget{
 @override
Widget build(BuildContext context){
  return Scaffold(
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: (){
        print("floating action");
      },
      child: Icon(Icons.add),
    ),
    appBar: AppBar(
    backgroundColor: Colors.black,
    title: Text("hello world"),
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.settings),
      onPressed: (){
        print("settings");
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: (){
          print("search");
        },
      ),
      IconButton(
        icon: Icon(Icons.mail_outline),
        onPressed: (){
          print("menu");
        },
      )
    ],
    ),
    //  body: Center(
    //    child: Container(
    //      height: 250,
    //      width: 250,
    //      decoration: BoxDecoration(
    //        borderRadius: BorderRadius.circular(15),
    //        color: Colors.blue,
    //        border: Border.all(
    //          width: 2,
    //        )
    //      ),
    //      child: Text("hello flutter",
    //      style: TextStyle(fontSize: 25,
    //      fontWeight: FontWeight.bold,),),
    //      alignment: Alignment(0, 0),
    //    ),
    //  )
    //  body: Center(
    //    child: Container(
    //      width: 300,
    //      height: 250,
       
    //      decoration: BoxDecoration(
    //        border: Border.all(
    //          width: 2,
    //        ), // how to usw the image in the network image
    //       // image: DecorationImage(
    //       //   image: NetworkImage('https://www.google.com/search?q=picture+of+diya&sxsrf=ACYBGNSMEJyqYOOD8vDojkbbN20CB-U_AA:1571724717201&source=lnms&tbm=isch&sa=X&ved=0ahUKEwicjNDrmq_lAhUJk3AKHVZODfMQ_AUIEigB&biw=1440&bih=703#imgrc=m50H192pJp1mfM:'),
    //       //   fit: BoxFit.cover,
    //       ),// how to use the iconbutton 
    //       child: IconButton(
    //          onPressed: (){
    //            print("tapped");
    //          },
    //          icon: Icon(
    //            Icons.mail_outline,
    //            size: 80,
    //          ),
    //       ),
    //      ), // how to use thee text widget
    //     // child: Text("hello abhineet",
    //     // style: TextStyle(fontWeight: FontWeight.bold,
    //     // color: Colors.black,
    //     // fontSize: 25,), ),
    //     // alignment: Alignment(.5, .5),
    //    ),
    // *how to use the rows and column widget
    // body: Column(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: <Widget>[
    //     Icon(
    //       Icons.mail_outline,
    //       size: 60,
    //     ),
    //     Icon(
    //       Icons.mail_outline,
    //       size: 60,
    //     ),
    //     Text("mail",
    //     style: TextStyle(fontSize: 25.0),
    //      ),
    //     Icon(
    //       Icons.mail_outline,
    //       size: 60,
    //     ),
    //     Icon(
    //       Icons.search,
    //       size: 60,
    //     ),
    //     Icon(
    //       Icons.mail_outline,
    //       size: 60,
    //     ),
    //   ],
    // ),
    //* how to use the list view and listtiile
    // body: ListView(
    //   children: <Widget>[
    //     ListTile(
    //       leading: Icon(Icons.mail_outline),
    //       title: Text("map"),
    //       onTap: (){
    //         print("map");
    //       },
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.search),
    //       title: Text("search"),
    //       onTap: (){
    //         print("search");
    //       },
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.album),
    //       title: Text("album"),
    //       onTap: (){
    //         print("album");
    //       },
    //     )
    //   ],
    // ),
     //* how to use the item listview.builder
//     body: ListView.builder(
//       itemCount: content.length,
// itemBuilder: (BuildContext context, int index){
//   return ListTile(
//     title: Text(content[index]),
//   );
// }
//     )
//* how to make a inkwell widget
// body: Center(
//   child: InkWell(
//     onTap: (){
//       print("pressed");
//     },
//     child: Container(
//       padding: EdgeInsets.all(12),
//       child: Text("flat button",
//       style: TextStyle(fontSize: 25),),
//     ),
//   ),
// ),
// // *how to generate a gird view 
// body: GridView.count(
//   crossAxisCount: 3,
//   children: List.generate(100, (index) {
//     return Center(
//       child: Container(
//         width: 80,
//         height: 80,
//         decoration: BoxDecoration(
//           color: Colors.blue,
//           border: Border.all(
//             width: 2,
//           )
//         ),
//         child: Text('item $index',style: TextStyle(fontSize: 20.0),
//         ),
//         alignment: Alignment(0, 0),
//       ),
//     );
//   })
// ),
// *how to use a raised button and a alert button
body: Container(
  width: 250,
  height: 50,
  child: RaisedButton(
    color: Colors.green,
    child: Text("book", style: TextStyle(fontSize: 20,
    color: Colors.white,)
    ,),
    elevation: 6,
    onPressed: (){
      print("book");
    },
  ),
  alignment: Alignment(0, 0),
),
     );
     
     // how to use the  padding widget 
     //Padding(
    //   padding: EdgeInsets.all(90.0),
    //   child: Text(
    //     "hello Abhineet",
    //     style: TextStyle(fontSize: 25),
    //   ),
    // )
    
    
    // how to use the center widget
    //Center (
    //    child: Text.rich(TextSpan(children: <TextSpan>[
    //   TextSpan(
    //     text: "Hii", 
    //     style: TextStyle(fontStyle: FontStyle.normal,fontSize: 25.0),
    //   ),
    //   TextSpan(
    //     text: "Abhineet",
    //     style: TextStyle(fontStyle: FontStyle.normal,fontSize: 25.0),
    //   )
    // ])),
    // )
     
}
}
