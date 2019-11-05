import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Homescreen.dart';
//import 'package:my_app/Homescreen.dart';
//import 'package:my_app/Signup.dart';
//import 'package:my_app/main.dart';

// var assetsImage = AssetImage(
//     '/Users/abhineet/project/flutter_project/no broker/assets/images.png');
// var image = Image(image: assetsImage, fit: BoxFit.cover);

//import 'package:my_app/practise.dart';
class Sign extends StatefulWidget {
  @override
  Signup createState() => new Signup();
}

class Signup extends State<Sign> {

  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  TextEditingController username1 = new TextEditingController();
  TextEditingController password1 = new TextEditingController();
  var _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  //String _name;
  //String _email;
  //String _mobile;
  bool _hidden = true;
  String _password;
  void _visibilitytoggle() {
    setState(() {
      _hidden = !_hidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.blue,
          title: const Text('Signup'),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.notifications),
          //     onPressed: () {
          //       print("search");
          //     },
          //   ),
          //   // IconButton(
          //   //   icon: Icon(Icons.mail_outline),
          //   //   onPressed: (){
          //   //     print("menu");
          //   //   },
          //   // )
          // ],
         // automaticallyImplyLeading: false,
         leading: IconButton(
           icon: Icon(Icons.arrow_back),
           onPressed: (){
             Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Homescreen(),
                          ),
              );
           },),
        ),
        // drawer: Drawer(
        //     child: Column(
        //   children: <Widget>[
        //     GestureDetector(
        //       child: UserAccountsDrawerHeader(
        //         accountName: Text("Abhineet kumar"),
        //         accountEmail: Text("abhineet0074@gmail.com"),
        //         currentAccountPicture: CircleAvatar(
        //           backgroundColor:
        //               Theme.of(context).platform == TargetPlatform.iOS
        //                   ? Colors.white
        //                   : Colors.blue,
        //           child: Text(
        //             "A",
        //             style: TextStyle(fontSize: 40.0),
        //           ),
        //         ),
        //       ),
        //       onTap: () {},
        //     ),
        //     Column(
        //       children: <Widget>[
        //         Row(
        //           children: <Widget>[
        //             IconButton(
        //               icon: Icon(Icons.create),
        //               onPressed: () {
        //                 Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => Login(),
        //                   ),
        //                 );
        //               },
        //             ),
        //             Text(
        //               "Login/Signup",
        //               style: TextStyle(fontWeight: FontWeight.w600),
        //             )
        //           ],
        //         )
        //       ],
        //     ),
        //     Column(
        //       children: <Widget>[
        //         Row(
        //           children: <Widget>[
        //             IconButton(
        //               icon: Icon(Icons.home),
        //               onPressed: () {},
        //             ),
        //             Text(
        //               "Home",
        //               style: TextStyle(fontWeight: FontWeight.w600),
        //             )
        //           ],
        //         )
        //       ],
        //     ),
        //     Column(
        //       children: <Widget>[
        //         Row(
        //           children: <Widget>[
        //             IconButton(
        //               icon: Icon(Icons.chat),
        //               onPressed: () {},
        //             ),
        //             Text(
        //               "Chat with us",
        //               style: TextStyle(fontWeight: FontWeight.w600),
        //             )
        //           ],
        //         )
        //       ],
        //     ),
        //   ],
        // )),
        body: Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: Column(children: <Widget>[
            // Container(
            //   child: Stack(
            //     //alignment: Alignment.bottomRight,
            //     children: <Widget>[
            //       Container(
            //         padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
            //         child: Text(
            //           "No",
            //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.fromLTRB(15, 175, 0, 0),
            //         child: Text(
            //           "Broker",
            //           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
            //         ),
            //       ),
            //       Container(
            //         padding: EdgeInsets.fromLTRB(230, 175, 0, 0),
            //         child: Text(
            //           ".",
            //           style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 80,
            //               color: Colors.blue),
            //         ),
            //       ),

            //       //const SizedBox(width: 30),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20, top: 35, right: 20),
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      controller: username,
                      decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                      validator: (val) {
                        return validateName(val);
                      },
                      // onSaved: (String val) {
                      //   _name = val;
                      // },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: username1,
                      decoration: InputDecoration(
                          labelText: "EMAIL",
                          labelStyle: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue))),
                      validator: (val) {
                        return validateEmail(val);
                      },
                      // onSaved: (String val) {
                      //   _email = val;
                      // },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: password1,
                      decoration: InputDecoration(
                          labelText: "PASSWORD",
                          labelStyle: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          suffixIcon: IconButton(
                            onPressed: _visibilitytoggle,
                            icon: _hidden
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                          )),
                      validator: (val) {
                        return validatePassword(val);
                      },
                      // validator: (val) =>
                      //     val.length < 6 ? 'Password too short.' : null,
                      //onSaved: (val) => _password = val,
                      obscureText: _hidden,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: password,
                      decoration: InputDecoration(
                          labelText: "CONFIRM PASSWORD",
                          labelStyle: TextStyle(
                              color: Colors.blue,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                          suffixIcon: IconButton(
                            onPressed: _visibilitytoggle,
                            icon: _hidden
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                          )),
                      validator: (val) {
                        return validateCPassword(val);
                      },
                      // validator: (val) =>
                      //     val.length < 6 ? 'Password too short.' : null,
                      //onSaved: (val) => _password = val,
                      obscureText: _hidden,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    // Container(
                    //   alignment: Alignment(1, 0),
                    //   padding: EdgeInsets.only(top: 15, left: 20),
                    //   child: InkWell(
                    //     child: Text(
                    //       'Forget password',
                    //       style: TextStyle(
                    //           color: Colors.blue,
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 14,
                    //           decoration: TextDecoration.underline),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 50,
                      width: 320,
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        shadowColor: Colors.blueAccent,
                        color: Colors.blue,
                        elevation: 8,
                        child: GestureDetector(
                          onTap: () {
                            _validateInputs();
                          },
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  fontFamily: "Montserrat"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // Container(
                    //   height: 50,
                    //   width: 320,
                    //   color: Colors.transparent,
                    //   child: Container(
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: <Widget>[
                    //         Center(
                    //             child: Image.asset(
                    //           'assets/images.png',
                    //           height: 20,
                    //           width: 20,
                    //           scale: 1,
                    //         )),
                    //         SizedBox(
                    //           width: 5,
                    //         ),
                    //         Center(
                    //           child: Text(
                    //             'Log in with facebook',
                    //             style: TextStyle(
                    //               fontWeight: FontWeight.bold,
                    //               fontSize: 24,
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //     decoration: BoxDecoration(
                    //       border: Border.all(
                    //         color: Colors.black,
                    //         style: BorderStyle.solid,
                    //         width: 1,
                    //       ),
                    //       color: Colors.transparent,
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ]),
        ));
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      //_formKey.currentState.save();
     _navigator();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  String validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    //print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter valid password';
      else
         _password = value;
         return null;
    }
  }

  String validateCPassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern);
    //print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter valid password';
      else if (_password == value) {
        return null;

      } else {
        return 'password not matched';
      }
    }
  }

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  String validateName(String value) {
    if (value.length < 3)
      return 'Name must be more than 2 charater';
    else
      return null;
  }
    _navigator() {
    if (username.text.length != 0 || password.text.length != 0 || password1.text.length != 0 || username1.text.length != 0) {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(builder: (BuildContext context) => new Homescreen()),
          (Route<dynamic> route) => false);
    } else {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return CupertinoAlertDialog(
            content: new Text(
              "username or password \ncan't be empty",
              style: new TextStyle(fontSize: 16.0),
            ),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text("OK"))
            ],
          );
        },
      );
    }
  }
}
