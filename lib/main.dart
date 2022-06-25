import 'package:amaliyot/Home/HomePage.dart';
import 'package:amaliyot/Log/Sign_In.dart';
import 'package:amaliyot/Log/Sign_Up.dart';
import 'package:amaliyot/Market/market.dart';
import 'package:amaliyot/intro/Intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.purple,
      ),
      home: Intro_Page(),
      routes: {
        Sign_Up.id:(context)=>const Sign_Up(),
        Sign_In.id:(context)=>const Sign_In(),
        HomePage.id:(context)=>const HomePage(),
        MarketPage.id:(context)=>const MarketPage(),
      },
    );
  }
}
