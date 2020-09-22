import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xff28df99), Color(0xff2ec1ac)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text(
                      "Login Page",
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.green[50],
                                filled: true,
                                labelText: "Username",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            maxLength: 10,
                            controller: usernameController,
                            onChanged: (value) {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.green[50],
                                filled: true,
                                labelText: "Password",
                                prefixIcon: Icon(Icons.lock),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            obscureText: true,
                            controller: passwordController,
                            onChanged: (value) {},
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
                          child: SizedBox(
                            width: 325,
                            child: RaisedButton(
                                shape: StadiumBorder(),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                color: Colors.green,
                                onPressed: () {}),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
