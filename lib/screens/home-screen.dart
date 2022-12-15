import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/banner.dart';
import 'package:slacks_test/log_in/register.dart';
import 'package:slacks_test/log_in/login.dart';
import 'package:slacks_test/screens/cart_screen.dart';
import 'package:slacks_test/screens/details/detail_page3.dart';
import 'package:slacks_test/screens/details/detail_page_1.dart';
import 'package:slacks_test/screens/details/detail_page_2.dart';
import 'package:slacks_test/screens/details/detail_page_5.dart';
import 'package:slacks_test/screens/details/detailpage_4.dart';
import 'package:slacks_test/screens/details/detailpage_6.dart';
import 'package:slacks_test/screens/logout.dart';
import 'package:slacks_test/screens/profie.dart';
import 'package:slacks_test/screens/wishlist.dart';
import '../log_in/signin.dart';
import 'details/detail_page.dart';
import 'new_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SharedPreferences? logindata;
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
      username = logindata?.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Cart()));
            },
            icon: Icon(Icons.shopping_cart_rounded),
          )
        ],
      ),
      body: GridView(
                    scrollDirection: Axis.vertical,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
                    primary: false,
                    padding: const EdgeInsets.all(30),
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (_) => DetailPage()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage('assets/images/baggy.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => DetailPage_3()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/product/ex.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_4()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/black.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_1()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/images/skinny/blue_4.png"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_2()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/a.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_6()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/b.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_5()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/c.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_1()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/d.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Text("$username"),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_1()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/f.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_1()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/e_1.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_1()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/g.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Detailpage_1()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage("assets/new/h.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                    ]),
      drawer: Drawer(
        child: ListView(
          children: [
            // const DrawerHeader(
            //     decoration: BoxDecoration(
            //       color: Colors.black,
            //     ),
            //     CircleAvatar(
            //       backgroundImage: NetworkImage(
            //         imageUrl!,
            //       ),
            //       radius: 60,
            //       backgroundColor: Colors.transparent,
            //     ),
            // SizedBox(height: 40),
            // Text(
            //   'NAME',
            //   style: TextStyle(
            //       fontSize: 15,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black54),
            // ),
            // Text(
            //   name!,
            //   style: TextStyle(
            //       fontSize: 25,
            //       color: Colors.black,
            //       fontWeight: FontWeight.bold),
            // ),
            // SizedBox(height: 20),
            // Text(
            //   'EMAIL',
            //   style: TextStyle(
            //       fontSize: 15,
            //       fontWeight: FontWeight.bold,
            //       color: Colors.black54),
            // ),
            // Text(
            //   email!,
            //   style: TextStyle(
            //       fontSize: 25,
            //       color: Colors.black,
            //       fontWeight: FontWeight.bold),
            // ),
            SizedBox(height: 40),

            ListTile(title:Text( "$username")   ,),
            ListTile(
              title: const Text('Profile'),
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Profile()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              title: const Text('Favourite'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shopping_bag, color: Colors.black),
              title: const Text('Wishlist'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Wish()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: const Text('settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              title: Text('My orders'),
            ),
            ListTile(
              leading: Icon(
                Icons.logout_outlined,
                color: Colors.black,
              ),
              title: const Text('Log out'),
              onTap: () {

                  logindata?.setBool('login', false);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>const LOG()));
                },


                // logindata.remove('user');
                // //logindata.setString('username', newuser);
                // if (newuser == true
                // ) {
                //   Navigator.pushReplacement(
                //       context, new MaterialPageRoute(builder: (context) => LOG()));
                // }
               // Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => LOG()));
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => Log_in()));
               // onPressed: () {
               //    signOutGoogle();
               //    Navigator.of(context).pushAndRemoveUntil(
               //        MaterialPageRoute(builder: (context) {
               //          return Logout();
               //        }), ModalRoute.withName('/'));
              //  };

            ),
          ],
        ),
      ),

    );
  }
}
