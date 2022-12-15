
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/log_in/login.dart';

import 'new_bar.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  get isDarkMode => null;
   SharedPreferences?logindata;
   String? username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata!.getString('username')!;
    });
  }

  // late SharedPreferences logindata;
  // late bool newuser;
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   check_if_already_login();
  // }
  //
  // void check_if_already_login() async {
  //   logindata = await SharedPreferences.getInstance();
  //   newuser = (logindata.getBool('login') ?? true);
  //   print(newuser);
  //   if (newuser == false) {
  //     Navigator.pushReplacement(
  //         context, new MaterialPageRoute(builder: (context) => LOG()));
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      SafeArea(
        child: ListView(
          children: [
       Container(
         alignment: Alignment.topLeft,
         child: IconButton(onPressed: (){
      Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back)
      ),
       ),
            Container(
              height:600,
              width: 19,
            ),
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                    shape: StadiumBorder()
                ),
                 onPressed: (){
                //   Navigator.push(
                //       context, MaterialPageRoute(builder: (_) => DetailPage()));//add payment method
                },
                child: Text('BUY NOW ${username}',
                  style: TextStyle(fontSize: 20),),
              ),
            ),
          ],
        ),
      )
    );
  }
}
