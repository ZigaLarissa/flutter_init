// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUpPage(),
  ));
}

// ignore: use_key_in_widget_constructors
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                alignment: Alignment.center,
                height: 115,
                width: 272,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _header(context),
                    ]),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                alignment: Alignment.center,
                height: 445,
                width: 272,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Column(
                  children: [
                    _inputField(context),
                    _forgotPassword(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Kalaba",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          "SignUp",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20),
        Text("name?"),
        SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.fromLTRB(65.0, 0, 65.0, 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text("secret word?"),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.fromLTRB(65.0, 0, 65.0, 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Text("repeat word"),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.fromLTRB(65.0, 0, 65.0, 0),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.zero,
                borderSide: BorderSide(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }

  _forgotPassword(context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "SignUp",
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Login Instead",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
