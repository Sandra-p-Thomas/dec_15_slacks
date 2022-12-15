import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/log_in/login.dart';

import 'bottomnavigation.dart';
import 'new_bar.dart';
class Wish extends StatefulWidget {
  const Wish({Key? key}) : super(key: key);

  @override
  State<Wish> createState() => _WishState();
}

class _WishState extends State<Wish> {
  late SharedPreferences logindata;
  late String username;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initial();
  }
  void initial() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      username = logindata.getString('username')!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: SafeArea(
        child: Column(
          children: [
          ],
        ),
      ),
    );
  }
}
