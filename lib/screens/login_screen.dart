import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController rePasswordController = TextEditingController();

    bool hide_sign_up = true;
    bool show_phone_filed = false;

    void hide_sign(){
      setState(() {
        hide_sign_up = false;
        show_phone_filed = true;
      });
    }


    return Scaffold(
      body: Stack(
        overflow: Overflow.clip,
        children: <Widget>[
          Container(
            height: height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/login_back.jpg")),
            ),
            child: Container(
              decoration: BoxDecoration(color: Colors.black.withOpacity(.3)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(top: height * .02),
              height: height * .53,
              width: width * .8,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.8),
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 110.0,
                        spreadRadius: 20.0)
                  ]),
              child: Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: hide_sign_up,
                child: Stack(
                  children: <Widget>[
                     Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "نام کاربری",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.9),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0,
                                    fontFamily: "login"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 12.0),
                                child: Container(
                                    height: height * .085,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(12.0),
                                        border: Border.all(color: Colors.black54)),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: TextFormField(
                                        controller: usernameController,
                                        style: TextStyle(
                                            fontSize: 24.0, color: Colors.black),
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            focusColor: Colors.white,
                                            hintText: "Amin4",
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text("رمز عبور",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.9),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      fontFamily: "login")),
                              Padding(
                                padding: EdgeInsets.only(bottom: 12.0),
                                child: Container(
                                    height: height * .085,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(12.0),
                                        border: Border.all(color: Colors.black54)),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: TextFormField(
                                        controller: passwordController,
                                        style: TextStyle(
                                            fontSize: 24.0, color: Colors.black),
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            focusColor: Colors.white,
                                            hintText: "* * * * * * * *",
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(" تکرار رمز عبور",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(.9),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                      fontFamily: "login")),
                              Padding(
                                padding: EdgeInsets.only(bottom: 12.0),
                                child: Container(
                                    height: height * .085,
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(12.0),
                                        border: Border.all(color: Colors.black54)),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 15.0),
                                      child: TextFormField(
                                        controller: rePasswordController,
                                        style: TextStyle(
                                            fontSize: 24.0, color: Colors.black),
                                        textAlign: TextAlign.center,
                                        decoration: InputDecoration(
                                            focusColor: Colors.white,
                                            hintText: "* * * * * * * *",
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.w500)),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ),
//                      Padding(
//                        padding: EdgeInsets.symmetric(horizontal: 15.0),
//                        child: Column(
//                          crossAxisAlignment: CrossAxisAlignment.end,
//                          children: <Widget>[
//                            Text(
//                              "شماره موبایل",
//                              style: TextStyle(
//                                  color: Colors.black.withOpacity(.9),
//                                  fontWeight: FontWeight.w600,
//                                  fontSize: 18.0,
//                                  fontFamily: "login"),
//                            ),
//                            Padding(
//                              padding: EdgeInsets.only(bottom: 12.0),
//                              child: Container(
//                                  height: height * .085,
//                                  decoration: BoxDecoration(
//                                      color: Colors.transparent,
//                                      borderRadius: BorderRadius.circular(12.0),
//                                      border: Border.all(color: Colors.black54)),
//                                  child: Padding(
//                                    padding: EdgeInsets.only(left: 15.0),
//                                    child: TextFormField(
//                                      controller: usernameController,
//                                      style: TextStyle(
//                                          fontSize: 24.0, color: Colors.black),
//                                      textAlign: TextAlign.center,
//                                      decoration: InputDecoration(
//                                          focusColor: Colors.white,
//                                          hintText: "09 - - -",
//                                          border: InputBorder.none,
//                                          hintStyle: TextStyle(
//                                              color: Colors.grey,
//                                              fontSize: 16.0,
//                                              fontWeight: FontWeight.w500)),
//                                    ),
//                                  )),
//                            ),
//                          ],
//                        ),
//                      ),
                      ],
                    ) ,
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: (){
                          hide_sign();
                        },
                        child: Container(
                          height: height * .08,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0))),
                          child: Center(
                            child: Text(
                              "-- ثبت و مرحله بعد --",
                              style: TextStyle(
                                color: Colors.white , fontSize: 20.0 , fontWeight: FontWeight.w600 , fontFamily: "login"
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
