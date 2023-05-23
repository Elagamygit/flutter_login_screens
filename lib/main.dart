// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_first_app/pages/login.dart';
import 'package:flutter_first_app/pages/signup.dart';
import 'package:flutter_first_app/pages/welcome.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: "/",
      routes: {
        "/" : (context) => const Welcome(),
        "/login" : (context) => const Login(),
        "/signup" : (context) => const Signup(),
    
      },
      debugShowCheckedModeBanner: false,
      
    );
  }
}

