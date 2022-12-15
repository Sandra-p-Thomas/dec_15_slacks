import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slacks_test/log_in/register.dart';
import 'package:slacks_test/log_in/signin.dart';
import 'package:slacks_test/screens/bottomnavigation.dart';
import 'package:slacks_test/screens/home-screen.dart';
import 'package:slacks_test/screens/new_bar.dart';

import '../screens/catagories.dart';

class LOG extends StatefulWidget {
  const LOG({Key? key}) : super(key: key);

  @override
  State<LOG> createState() => _LOGState();
}

class _LOGState extends State<LOG> {
  final _formkey = GlobalKey<FormState>();
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

   SharedPreferences? logindata;
  late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }
  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata!.getBool('login') ?? true);
    print(newuser);
    if (newuser == true) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Barnew()));
    }
  }


  @override
  void dispose() {
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async=>false ,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white24,
                        ),
                        child: TextFormField(
                          controller: username_controller,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(5),
                              hintText: "phone",
                              hintStyle: TextStyle(color: Colors.black),
                              icon: Icon(
                                Icons.phone,
                                color: Colors.black,
                              )),
                          validator: (valuephone) {
                            if (valuephone!.isEmpty) {
                              return 'Enter  number';
                            }
                            if (valuephone.length < 10) {
                              return 'Number minimum length is 10';
                            }
                            if (valuephone.length > 10) {
                              return 'The number must be 10 digit';
                            }
                            if (RegExp(r'^[0-9]+$').hasMatch(valuephone)) {
                              return null;
                            } else {
                              return 'Numbers only';
                            }
                          },
                          onSaved: (value1) {
                            //phone = value1!;
                          },
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white24,
                        ),
                        child: TextFormField(
                          controller: password_controller,
                          keyboardType: TextInputType.visiblePassword,
                          //  obscureText: _visible,
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    //   show();
                                  },
                                  child: Icon(Icons.remove_red_eye_outlined)),
                              hintStyle: TextStyle(color: Colors.black),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(10),
                              hintText: "Confirm password",
                              icon: Icon(
                                Icons.lock_outline,
                                color: Colors.black,
                              )),
                          validator: (valuepassword) {
                            if (valuepassword!.isEmpty) {
                              return 'Enter your password';
                            }
                            if (valuepassword.length < 6) {
                              return 'Password must be more than 6 Letters';
                            }
                            if (valuepassword.length > 12) {
                              return 'Password must not be more than 12 Letters';
                            }
                            if (RegExp(
                                    r'^(?=^.{6,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$')
                                .hasMatch(valuepassword)) {
                              return null;
                              //  writedData();
                            } else {
                              return "Password should Contain at least 1 symbol,Uppercase or number";
                            }
                          },
                          //   onSaved: (value1){
                          //   pass = value1!;
                          // },
                        ),
                      ),
                      SizedBox(),
                      Container(
                        height: 50,
                        width: 150,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                shape: StadiumBorder()),
                            onPressed: () {
                              String username = username_controller.text;
                              String password = password_controller.text;
                              if (username != '' && password != '') {
                                print('Successfull');
                                logindata!.setBool('login', false);
                                logindata!.setString('username', username);
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Barnew()));
                              }
                            },
                            child: Text("LOG IN")),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      InkWell(child: Text("dont have a account?"),
                        onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_) => Log_in()));
                      },),
                      Padding(padding: EdgeInsets.all(10)),

                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
  // Widget _signInButton() {
  //   return OutlinedButton(
  //     //splashColor: Colors.grey,
  //     onPressed: () {
  //       signInWithGoogle().then((result) {
  //         if (result != null) {
  //           Navigator.of(context).push(
  //             MaterialPageRoute(
  //               builder: (context) {
  //                 return Barnew();
  //               },
  //             ),
  //           );
  //         }
  //       });
  //     },
  //     child: Padding(
  //       padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
  //       child: Row(
  //         mainAxisSize: MainAxisSize.min,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Image(
  //               image: AssetImage("assets/images/google.png"), height: 35.0),
  //           Padding(
  //             padding: const EdgeInsets.only(left: 10),
  //             child: Text(
  //               'Sign in with Google',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 color: Colors.grey,
  //               ),
  //             ),
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
