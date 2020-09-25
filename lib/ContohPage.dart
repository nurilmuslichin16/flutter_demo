import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ContohPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff2ec1ac), Color(0xff89beb3)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          title: Text("Contoh Page"),
          bottom: TabBar(indicatorColor: Colors.white, tabs: [
            Tab(
              icon: Icon(Icons.message),
              text: "Message",
            ),
            Tab(
              icon: Icon(Icons.vpn_key),
              text: "Password",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Profile",
            )
          ]),
        ),
        body: TabBarView(children: [
          Center(
            child: Container(
              child: RaisedButton(
                  color: Colors.white,
                  child: Text("Kembali dari Tab 1"),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return MainPage();
                    // }));
                    Navigator.pop(context);
                  }),
            ),
          ),
          Center(
            child: Container(
              child: RaisedButton(
                  color: Colors.white,
                  child: Text("Kembali dari Tab 2"),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return MainPage();
                    // }));
                    Navigator.pop(context);
                  }),
            ),
          ),
          Center(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0xff89beb3),
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.white70, width: 3))),
                        child: Row(
                          children: [
                            Container(
                              height: 90,
                              width: 90,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage("assets/profil.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "Nuril Muslichin",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Roboto",
                                          fontSize: 24,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Indonesia",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.6,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: BoxDecoration(
                                      color: Color(0xff89beb3),
                                      borderRadius: BorderRadius.circular(7)),
                                  padding: EdgeInsets.all(7),
                                  child: Icon(
                                    Icons.mail,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "nurilmuslichin16@gmail.com",
                                  style: TextStyle(color: Color(0xff89beb3)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 15),
                                  decoration: BoxDecoration(
                                      color: Color(0xff89beb3),
                                      borderRadius: BorderRadius.circular(7)),
                                  padding: EdgeInsets.all(7),
                                  child: Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "0852 2953 1170",
                                  style: TextStyle(color: Color(0xff89beb3)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: Center(
                              child: Column(
                                children: [
                                  QrImage(
                                      version: 6,
                                      backgroundColor: Colors.white,
                                      foregroundColor: Colors.black,
                                      padding: EdgeInsets.all(20),
                                      size: 200,
                                      data: "https://ini.space/nurilmuslichin"),
                                  Text(
                                    "Scan Me",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
