// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "Page2",
          style: TextStyle(fontSize: 33, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {"country": "Canada","CurrentTime": "05:30 am"});
              },
              child: Text(
                "Return to page1 with info about Canada",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 95, 11, 81)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
            ),
            SizedBox(
              height: 22,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, {"country": "EGYPT","CurrentTime": "11:30 pm"});
              },
              child: Text(
                "Return to page1 with info about EGYPT",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 95, 11, 81)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)))),
            ),
          ],
        ),
      ),
    );
  }
}
