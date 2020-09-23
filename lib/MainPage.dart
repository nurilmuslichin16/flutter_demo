import 'package:aplikasi_demo/LoginPage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff28df99), Color(0xff2ec1ac)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Card(
                elevation: 10,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://www.toptal.com/designers/subtlepatterns/patterns/memphis-mini.png"),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          MediaQuery.of(context).size.height * 0.30 + 25,
                          20,
                          20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Halaman Login",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
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
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
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
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return LoginPage();
                                    }));
                                    // Navigator.pop(context);
                                  }),
                            ),
                          )
                        ],
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
