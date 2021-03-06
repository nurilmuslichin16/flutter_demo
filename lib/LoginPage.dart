import 'package:aplikasi_demo/ContohPage.dart';
import 'package:aplikasi_demo/RegisterPage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  TextEditingController cEmail = TextEditingController();
  TextEditingController cPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Hero(
              tag: "LKecil",
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xff28df99), Color(0xff2ec1ac)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Hero(
              tag: "LBesar",
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                        colors: [Color(0xff2ec1ac), Color(0xff28df99)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 75,
            child: Container(
              child: Column(children: [
                Text(
                  "Halaman Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ]),
            ),
          ),
          Positioned(
            left: 30,
            top: 115,
            child: Container(
              child: Column(children: [
                Text(
                  "Hi, Selamat Pagi",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ]),
            ),
          ),
          Positioned(
            right: -230,
            bottom: -230,
            child: Hero(
              tag: "LTrans",
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffc5fad9)),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        controller: cEmail,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.mail,
                              color: Color(0xff2ec1ac),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff2ec1ac))),
                            labelText: "Email: ",
                            labelStyle: TextStyle(color: Color(0xff2ec1ac))),
                      ),
                      TextField(
                        controller: cPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xff2ec1ac),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff2ec1ac))),
                            labelText: "Password: ",
                            labelStyle: TextStyle(color: Color(0xff2ec1ac))),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 22, 20),
                    child: Text(
                      "LUPA PASSWORD?",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Color(0xff2ec1ac)),
                    ),
                  ),
                ),
                Hero(
                  tag: "Button",
                  child: Container(
                    margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.white38,
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return ContohPage();
                                  }));
                                  // Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text(
                                    "Masuk",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xff2ec1ac),
                                      Color(0xff28df99)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                          ),
                        ),
                        FloatingActionButton(
                          heroTag: null,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          mini: true,
                          elevation: 0,
                          child:
                              Image(image: AssetImage("assets/fb_icon.webp")),
                        ),
                        FloatingActionButton(
                          heroTag: null,
                          backgroundColor: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          mini: true,
                          elevation: 0,
                          child: Image(
                              image: AssetImage("assets/gmail_icon.webp")),
                        )
                      ],
                    ),
                  ),
                ),
                Hero(
                  tag: "Caption",
                  child: Container(
                    margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Apakah anda belum punya akun? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return RegisterPage();
                            }));
                          },
                          child: Text(
                            "Registrasi",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2ec1ac),
                                fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
