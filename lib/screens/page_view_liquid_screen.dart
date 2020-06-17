import 'package:asso/screens/home_screen.dart';
import 'package:asso/widgets/app_clipper.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'dart:math' as math;

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {

  int _currentPage;

  PageController pageController ;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
  }


  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: LiquidSwipe(
        pages: <Container>[
          Container(
            height: height,
            color: Colors.red,
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 0.0,
                  bottom: height * .075,
                  child: Transform.rotate(
                    angle: math.pi/2,
                    child: ClipPath(
                      clipper: AppClipper(),
                      child: Container(
                        color: Colors.blue,
                        height: 130.0,
                        width: 150.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  child: Container(
                    height: height,
                    width: width * .03,
                    color: Colors.blue,
                  ),
                ),
                Align(
                  child: Text("متنی درباره ویژگی های برنامه" , style: TextStyle(color: Colors.white , fontSize: 20.0),),
                  alignment: Alignment.center,
                ),
                Positioned(
                  left: width * .45,
                  bottom: height * .05,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 10.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height,
            color: Colors.blue,
            child: Stack(
              children: <Widget>[
                Positioned(
                  right: 0.0,
                  bottom: height * .075,
                  child: Transform.rotate(
                    angle: math.pi/2,
                    child: ClipPath(
                      clipper: AppClipper(),
                      child: Container(
                        color: Colors.yellow,
                        height: 130.0,
                        width: 150.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0.0,
                  child: Container(
                    height: height,
                    width: width * .03,
                    color: Colors.yellow,
                  ),
                ),
                Align(
                  child: Text("متن و عکسی درباره ارزش های برنامه "),
                  alignment: Alignment.center,
                ),
                Positioned(
                  left: width * .45,
                  bottom: height * .05,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 10.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(40.0)),
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            height: height,
            color: Colors.yellow,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: Container(
                      height: height * .07,
                      width: width * .6,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Center(
                        child: Text("بزن بریم " , style: TextStyle(color: Colors.white , fontSize: 18.0),),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: width * .45,
                  bottom: height * .05,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 10.0,
                        width: 10.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Container(
                          height: 10.0,
                          width: 10.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 10.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
        fullTransitionValue: 600,
        enableLoop: false,
        initialPage: 0,
        enableSlideIcon: pageChangeCallBack(pageController) !=  2 ,
        positionSlideIcon: 0.65,
        slideIconWidget: Text("بعدی"),
        waveType: WaveType.liquidReveal,
        currentUpdateTypeCallback: (updateType) =>
            updateTypeCallBack(updateType),
        onPageChangeCallback: (PageController) => pageChangeCallBack(pageController),
      ),
    );
  }

  //havaset bashe in baddie farsi ro taghir bedi k akharin screen nadashte bashe

  int pageChangeCallBack(PageController page) {
    print(page.initialPage);
    return page.initialPage;
  }

  updateTypeCallBack(UpdateType updateType) {
    print(updateType);
  }
}
