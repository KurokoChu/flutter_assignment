import 'package:flutter/material.dart';
import 'package:flutter_assignment/pages/login_screen.dart';
import 'package:flutter_assignment/pages/register_screen.dart';
import 'package:flutter_assignment/pages/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/login": (_) => LoginScreen(),
        "/register": (_) => RegisterScreen(),
        "/main": (_) => MainScreen(),
      },
      home: LoginScreen(),
    );
  }
}
