import 'package:flutter/material.dart';

class ContohPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff28df99),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff2ec1ac), Color(0xff28df99)],
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
            child: Container(
              child: RaisedButton(
                  color: Colors.white,
                  child: Text("Kembali dari Tab 3"),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return MainPage();
                    // }));
                    Navigator.pop(context);
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
