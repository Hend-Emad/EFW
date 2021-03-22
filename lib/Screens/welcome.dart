import 'package:fgc/Screens/Signin.dart';
import 'package:fgc/Screens/Signup.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Builder(
        builder: (context)=> Scaffold(
          body: SafeArea(
            child: Center(
              child: Container(
                //color: Colors.lightGreen,
                //decoration: BoxDecoration(
                  //image: DecorationImage(
                    //image: AssetImage("assets/1.png"),
                    //fit: BoxFit.cover,
                  //),
                //),
                child: Column(
                  children: [
                    AppBar(backgroundColor: Colors.lightGreen,),
                    Image.asset('assets/2.png'),
                    Text('Welcome to EFW', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.brown[500]),),
                    SizedBox(height: 30.0,),
                    ButtonTheme(
                      buttonColor: Colors.lightGreen,
                      minWidth: 370,
                      height: 50.0,
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
                        },
                        child: Text("Signin", style: TextStyle(fontSize: 20,color: Colors.black,),),
                        color: Colors.lightGreen,
                        textColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                      ),
                    ),
                    SizedBox(
                      height: 10, width: 200,
                    ),
                    ButtonTheme(
                      buttonColor: Colors.lightGreen,
                      minWidth: 370,
                      height: 50.0,
                      child: RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                        },
                        child: Text("Signup", style: TextStyle(fontSize: 20,color: Colors.black,),),
                        color: Colors.lightGreen,
                        textColor: Colors.black,
                        padding: EdgeInsets.all(8.0),

                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
