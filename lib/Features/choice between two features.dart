import 'package:fgc/Features/Recommendation.dart';
import 'package:fgc/Features/detection.dart';
import 'package:fgc/Screens/Signup.dart';
import 'package:flutter/material.dart';
class Features extends StatefulWidget {
  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: IconButton(icon:ListView(
            children: [
              BackButtonWidget()
            ],
          )),
          backgroundColor: Colors.lightGreen,
        ),
        body: SafeArea(
            child: Flexible(
              child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.all(12),
                            child: RaisedButton(
                              color: Colors.lightGreen,
                              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Detection())),
                              child: Text('Detection',style: TextStyle(fontSize: 40),),
                            ))),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: RaisedButton(
                          color: Colors.lightGreen,
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Recommendation())),
                          child: Text('Recommendation',style: TextStyle(fontSize: 40),),
                        ),
                      ),
                    )
                  ])),
            ),
          ),
        );
  }
}
