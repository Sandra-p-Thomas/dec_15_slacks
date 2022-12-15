// NOT INCLUDED IN PROJEC
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class Dog1 extends StatefulWidget {
  const Dog1({Key? key}) : super(key: key);

  @override
  State<Dog1> createState() => _Dog1State();
}

class _Dog1State extends State<Dog1> {
  final _formKey = GlobalKey<FormState>();
  String? fname,lname,mail,pass;
  int?phone;

  writedata() async {
    _formKey.currentState!.save();
    var databaseUrl = "https://slack-test-d83b8-default-rtdb.firebaseio.com//" +
        "secondTry.json";
    try {
      final response = await http.post(Uri.parse(databaseUrl),
          body: json.encode({"first name": fname, "Last name": lname, "e-mail": mail,"password":pass,"phone number":phone}));
    } catch (e) {
      print("retry");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    onSaved: (fnames) {
                     fname =fnames!;
                    },
                    decoration: InputDecoration(hintText: 'Enter first name'),
                  ),
                  SizedBox(),
                  TextFormField(
                    onSaved: (lnames) {
                      lnames = lnames!;
                    },
                    decoration: InputDecoration(hintText: 'Enter last Name'),
                  ),
                  TextFormField(
                    onSaved: (mails) {
                      mail = mails!;
                    },
                    decoration: InputDecoration(hintText: 'Enter Email'),
                  ), SizedBox(),
                  TextFormField(
                    onSaved: (mobile) {
                      phone = mobile! as int? ;
                    },
                    decoration: InputDecoration(hintText: 'Enter phone number'),
                  ), SizedBox(),
                  TextFormField(
                    onSaved: (passwords) {
                      pass = passwords!;
                    },
                    decoration: InputDecoration(hintText: 'Enter password'),
                  ), SizedBox(),
                  TextFormField(
                    decoration: InputDecoration(hintText: 'confirm password'),
                  ), SizedBox(),
                ],
              ),
            ),
            TextButton(
                onPressed: () {
                  writedata();
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
