import 'package:flutter/material.dart';
import 'package:note_app2/pages/home_page.dart';


void main (){
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark ,
      fontFamily: 'Poppins'
      ),
      home: const  HomePage()
    );
  }
}