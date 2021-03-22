import 'package:fgc/Features/choice%20between%20two%20features.dart';
import 'package:fgc/Screens/Signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.lightGreen,),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Center(
            child: Container(
              height: 50,
             // decoration: BoxDecoration(
               //   image: DecorationImage(
                 //     fit: BoxFit.cover, image: AssetImage('asset/img/app.png'))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.person), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Username'),
                        )))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(Icons.lock), onPressed: null),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(right: 20, left: 10),
                        child: TextField(
                          decoration: InputDecoration(hintText: 'Password'),
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 60,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Features()));
                  },
                  color: Colors.lightGreen,
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, 'SignUp');
            },
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  ButtonTheme(
                    buttonColor: Colors.white,
                    minWidth: 20,
                    height: 0,
                    child: RaisedButton(
                      //shape: new RoundedRectangleBorder(
                        //  borderRadius: new BorderRadius.circular(30.0)
                      //),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },
                      child: Text("Signup", style: TextStyle(fontSize: 20,color: Colors.black,),),
                      color: Colors.white,
                      textColor: Colors.black,
                      padding: EdgeInsets.all(8.0),

                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}