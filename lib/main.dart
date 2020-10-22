import 'dart:async';
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/Frontend/frontend.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {'Login': (context) => Login()},
    );

  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void startTimer() {
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacementNamed('Login');
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.purple,
                  Colors.teal,

                ]
            ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child:
                  Text(
                    "e-commerce",
                    style: TextStyle(
                       // fontFamily: "Satisfy",
                        fontSize: 50.0,
                        color: Colors.white
                    ),
                  )

              ),
            ],
          ),

        )
    );
  }
}
