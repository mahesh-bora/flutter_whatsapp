import 'package:flutter/material.dart';
import 'WhatsAppHome.dart';

void main() {
   runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
        primaryColor: const Color(0xff07655a),
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xff250366)),
      ),
      home: new WhatsAppHome(),
    );
  }
}