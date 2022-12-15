import 'dart:math';
import 'package:flutter/material.dart';
class CounterDesign1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterDesign1();
  }
}

class _CounterDesign1 extends State<CounterDesign1> {
  var _n = 1;
  var _amt = 100;
  void add() {
    setState(() {
      if(_n!=0)
        _amt = _amt + 100;
      _n++;

    });
  }
  void minus() {
    setState(() {
      if (_n != 1) _n--;
      _amt=max(_amt-100,100);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 170.0,
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                onPressed: () {
                  add();
                },
              ),
              SizedBox(
                width: 10.0,
              ),
              new Text('$_n', style: new TextStyle(fontSize: 30.0)),
              SizedBox(
                width: 10.0,
              ),
              new IconButton(
                icon: const Icon(
                  Icons.remove,
                  color: Colors.black,
                ),
                onPressed: () {
                  minus();
                },
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 58.0,
        ),
        Container(
            child: Text(
              'Rs $_amt',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            )),
      ],
    );
  }
}