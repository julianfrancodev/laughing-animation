import 'package:flutter/material.dart';
import 'package:page_transitions_animation/src/pages/page1_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Transtions App",
      home: Page1Page(),
    )
  );
}