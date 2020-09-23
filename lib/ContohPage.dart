import 'package:flutter/material.dart';

class ContohPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Contoh Page"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: RaisedButton(
                  child: Text("Kembali"),
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) {
                    //   return MainPage();
                    // }));
                    Navigator.pop(context);
                  }),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.red,
              child: Text("Media Query * 0.5"),
            )
          ],
        ),
      ),
    );
  }
}
