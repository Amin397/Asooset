import 'dart:async';
import 'package:asso/screens/page_view_liquid_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController _splashController;

  @override
  void initState() {
    super.initState();
    _splashController = AnimationController(vsync: this)..value = .5;

    Timer(Duration(milliseconds: 7900) , ()=> _splashController.dispose());

    Timer(
        Duration(seconds: 8),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => PageViewScreen())));
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: width * .25),
                child: Container(
                  height: height * .15,
                  width: width * .7,
                  child: Center(
                    child: Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "AS",
                            style: TextStyle(
                                fontSize: height * .13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          left: 80.0,
                          bottom: 60.0,
                          child: Container(
                            child: Lottie.asset('assets/animations/motion.json',
                                height: 90.0,
                                width: 200.0,
                                fit: BoxFit.cover,
                                controller: _splashController,
                                onLoaded: (composition) {
                              _splashController.duration = composition.duration;
                              _splashController.forward();
                              _splashController.repeat();
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: height * .1),
              child: Text(
                "آسوست",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
