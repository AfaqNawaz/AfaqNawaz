import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme:
              GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Login")),
        ),
        body: Center(
          child: Column(children: [
            Image.network(
                '//www.pexels.com/photo/delicious-hamburger-and-mug-of-cold-smoothie-on-wooden-board-4552047/'),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[600].withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16)),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    border: InputBorder.none,
                    hintText: 'Enter YourEmail',
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                    suffixIcon: Icon(Icons.email)),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                border: InputBorder.none,
                hintText: 'Enter Your Password',
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                suffixIcon: Icon(Icons.security),
              ),
              obscureText: true,
            )),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Signup"),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            )
          ]),
        ),
      ),
    );
  }
}
