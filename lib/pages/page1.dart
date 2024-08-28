// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use, unused_local_variable

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Map time = {"country": "EGYPT", "CurrentTime": "10:30 am"};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 58, 100),
        title: Text(
          "Page1",
          style: TextStyle(fontSize: 33, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                dynamic receivedDataFrompage2 =
                    await Navigator.pushNamed(context, '/page2');
                setState(() {
                  if (receivedDataFrompage2 == null) {
                    time = {"country": "EGYPT", "CurrentTime": "10:30 am"};
                  }else{
                      time = {
                    "country": receivedDataFrompage2["country"],
                    "CurrentTime": receivedDataFrompage2["CurrentTime"],
                  };
                  }
                });
              },
              child: Text(
                "Go to page2",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 20, 58, 100)),
                  padding: MaterialStateProperty.all(EdgeInsets.all(19)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11)))),
            ),
            SizedBox(
              height: 65,
            ),
            Text(
              time["CurrentTime"],
              style: TextStyle(fontSize: 44),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              time["country"],
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
