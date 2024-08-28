import 'package:flutter/material.dart';
import 'package:flutter_simple_project_api/pages/page1.dart';
import 'package:flutter_simple_project_api/pages/page2.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      initialRoute: "/page1",
      routes: {
        "/page1" : (context) => Page1(),
        "/page2" : (context) => Page2()
      },
    );
  }
}
