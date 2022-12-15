import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/banner.dart';
import 'package:slacks_test/screens/cart_screen.dart';
import 'package:slacks_test/screens/catagories.dart';
import 'package:slacks_test/screens/home-screen.dart';
import 'package:slacks_test/screens/profie.dart';

class Barnew extends StatefulWidget {
  const Barnew({Key? key}) : super(key: key);

  @override
  _BarnewState createState() => _BarnewState();
}

class _BarnewState extends State<Barnew> {
 SharedPreferences ?logindata;
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
  int pageIndex = 0;

  final pages = [
    const Banner1(),
    // HomePage(),
    Categ(),
    const Cart(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.local_offer,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.local_offer_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.category,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.category_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.shopping_cart_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 35,
            ),
          ),
          Text("$username",style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}

