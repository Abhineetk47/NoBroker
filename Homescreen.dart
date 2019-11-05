import 'package:flutter/material.dart';
import 'package:my_app/Login.dart';
import 'package:my_app/Signup.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
//import 'package:my_app/main.dart';

var assetsImage = AssetImage(
    '/Users/abhineet/project/flutter_project/no broker/assets/images.png');
var image = Image(image: assetsImage, fit: BoxFit.cover);

//import 'package:my_app/practise.dart';
class Homescreen extends StatefulWidget {
  @override
  Home createState() => new Home();
}

class Home extends State<Homescreen> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool chechValue = false;
  SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    getCredential();
  }

  bool _hidden = true;
  var _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  //String _email;
  //String _password;
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
          title: const Text('Login'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                print("search");
              },
            ),
            // IconButton(
            //   icon: Icon(Icons.mail_outline),
            //   onPressed: (){
            //     print("menu");
            //   },
            // )
          ],
        ),
         drawer: Drawer(
            child: Column(
          children: <Widget>[
            GestureDetector(
              child: UserAccountsDrawerHeader(
                accountName: Text("Abhineet kumar"),
                accountEmail: Text("abhineet0074@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.white
                          : Colors.blue,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              onTap: () {},
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.create),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                    ),
                    Text(
                      "Login/Signup",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.home),
                      onPressed: () {},
                    ),
                    Text(
                      "Home",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.chat),
                      onPressed: () {},
                    ),
                    Text(
                      "Chat with us",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ],
        )
        ),
        body: Form(
          key: _formKey,
          autovalidate: _autoValidate,
          child: Column(children: <Widget>[
            Container(
              child: Stack(
                //alignment: Alignment.bottomRight,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 110, 0, 0),
                    child: Text(
                      "No",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 175, 0, 0),
                    child: Text(
                      "Broker",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(230, 175, 0, 0),
                    child: Text(
                      ".",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          color: Colors.blue),
                    ),
                  ),

                  //const SizedBox(width: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20, top: 35, right: 20),
              child: Column(
                children: <Widget>[
                  TextFormField(
                      controller: username,
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
                      // validator: (val) {
                      //   if(val.isEmpty){
                      //     return 'please enter valid email address';
                      //   }
                      //   if () {

                      //   } else {
                      //   }
                      // },
                      keyboardType: TextInputType.emailAddress),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                      controller: password,
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
                        // if(val.isEmpty)
                        // {
                        //   return 'please enter password';
                        // }
                        // if (val.length < 6) {
                        //   return 'Password too short.';
                        // } else {
                        //   return null;
                        // }
                      },
                      //onSaved: (val) => _password = val,
                      obscureText: _hidden,
                      keyboardType: TextInputType.visiblePassword),
                  SizedBox(
                    height: 5,
                  ),
                  CheckboxListTile(
                     value: chechValue,
                     onChanged: _onChanged,
                     title: Text('Remember me'),
                     controlAffinity: ListTileControlAffinity.leading,
                  ),
                  
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    
                      // Container(
                      //   //alignment: Alignment(-1, 0),
                      //   child: CheckboxListTile(
                      //     value: chechValue,
                      //     onChanged: _onChanged,
                      //     title: new Text("Remember me"),
                      //     // controlAffinity: ListTileControlAffinity.leading,
                      //   ),
                      // ),
                      Container(
                        alignment: Alignment(1, 0),
                        padding: EdgeInsets.only(top: 15, left: 20),
                        child: InkWell(
                          child: Text(
                            'Forget password',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                    
                  
                  SizedBox(
                    height: 40,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 8,
                    child: Container(
                      height: 50,
                      width: 320,
                      child: GestureDetector(
                        onTap: () {
                          _validateInputs();
                        },
                        child: Center(
                          child: Text(
                            "Login",
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
                  Container(
                    height: 50,
                    width: 320,
                    color: Colors.transparent,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                              child: Image.asset(
                            'assets/images.png',
                            height: 20,
                            width: 20,
                            scale: 1,
                          )),
                          SizedBox(
                            width: 5,
                          ),
                          Center(
                            child: Text(
                              'Log in with facebook',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'new to No Broker?',
                    style: TextStyle(fontFamily: 'montserrat'),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Sign(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontFamily: 'monserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
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
        return null;
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

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
//    If all data are correct then save data to out variables
      _formKey.currentState.save();
      _navigator();
    } else {
//    If all data are not valid then start auto validation.
      setState(() {
        _autoValidate = true;
      });
    }
  }

  void _onChanged(bool value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      chechValue = value;
      sharedPreferences.setBool("check", chechValue);
      sharedPreferences.setString("username", username.text);
      sharedPreferences.setString("password", password.text);
      //sharedPreferences.commit();
      getCredential();
    });
  }

  getCredential() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      chechValue = sharedPreferences.getBool("check");
      if (chechValue != null) {
        if (chechValue) {
          username.text = sharedPreferences.getString("username");
          password.text = sharedPreferences.getString("password");
        } else {
          username.clear();
          password.clear();
          sharedPreferences.clear();
        }
      } else {
        chechValue = false;
      }
    });
  }

  _navigator() {
    if (username.text.length != 0 || password.text.length != 0) {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(builder: (BuildContext context) => new Login()),
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
