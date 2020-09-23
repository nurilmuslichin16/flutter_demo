import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 1 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 9 / 8;

  TextEditingController cUsername = TextEditingController();
  TextEditingController cEmail = TextEditingController();
  TextEditingController cPassword = TextEditingController();
  TextEditingController cKonfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      body: Stack(
        children: [
          Positioned(
            right: -115,
            top: -115,
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
            left: 0,
            top: 0,
            child: Hero(
              tag: "LBesar",
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
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
                  "Halaman Registrasi",
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
            right: 0,
            bottom: -200,
            child: Hero(
              tag: "LTrans",
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, color: Color(0xffc5fad9)),
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
                  margin: EdgeInsets.fromLTRB(20, 150, 20, 10),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: [
                      TextField(
                        controller: cUsername,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Color(0xff2ec1ac),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff2ec1ac))),
                            labelText: "Username: ",
                            labelStyle: TextStyle(color: Color(0xff2ec1ac))),
                      ),
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
                      TextField(
                        controller: cPassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color(0xff2ec1ac),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff2ec1ac))),
                            labelText: "Password: ",
                            labelStyle: TextStyle(color: Color(0xff2ec1ac))),
                      )
                    ],
                  ),
                ),
                Hero(
                  tag: "Button",
                  child: Container(
                    margin: EdgeInsets.fromLTRB(25, 20, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Container(
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.white38,
                                onTap: () {
                                  // Navigator.push(context,
                                  //     MaterialPageRoute(builder: (context) {
                                  //   return ContohPage();
                                  // }));
                                  Navigator.pop(context);
                                },
                                child: Center(
                                  child: Text(
                                    "Registrasi",
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
                          "Sudah punya akun? ",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 14),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "Login",
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
