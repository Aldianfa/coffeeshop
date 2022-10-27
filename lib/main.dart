import 'package:flutter/material.dart';
import 'package:uts_mobile/home_kopi.dart';
// import 'package:uts_mobile/homepage2.dart';
// import 'package:uts_mobile/loginpage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //untuk menghilangkan banner debug diatas
      theme: ThemeData(
        fontFamily : 'Poppins'
      ),
      home: Home_page(),//menjalankan class pertama kali
    );
  }
}