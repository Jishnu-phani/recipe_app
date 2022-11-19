import 'package:flutter/material.dart';
import 'package:recipe_app/views/home.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food recipe',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.orange,
          primaryColor: Colors.white,
          textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.white)
          )
      ),
      home: HomePage(),
    );
  }
}