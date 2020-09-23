import 'package:aplikasi_demo/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Berfungsi untuk mengatur orientasi aplikasi agar hanya bisa dijalankan di posisi vertical / portrait
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
