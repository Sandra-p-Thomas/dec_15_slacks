import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/log_in/login.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    initial();

    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                LOG()
            )
        )
    );
  }
  SharedPreferences? logindata;
  String? username;


  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata!.getString('username');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf0f0f0),
      body: ListView(
        children:[ Column(
          children:[
            Container(
              width: 250,
              height: 250,
              padding: EdgeInsets.all(25),
            color: Color(0xFFf0f0f0)),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image:AssetImage('assets/images/appstore.png'),
                  fit: BoxFit.cover)
              ),
            ),
            Container(
              padding:EdgeInsets.all(50),
              child:
            LinearProgressIndicator(
              minHeight: 5,
              backgroundColor: Colors.black,
              color: Color(0xFFf0f0f0),
            )
            ),
        ]
        ),
      ]),
    );
  }
}
