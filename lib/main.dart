import 'package:flutter/material.dart';
import 'package:instagramfontpageui/pages/explore/explorePage.dart';
// import 'package:instagramfontpageui/controllerPage.dart';
import 'package:instagramfontpageui/pages/home/homePage.dart';
import 'package:instagramfontpageui/pages/profilePage/ProfilePage.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    initialRoute:'/',
    routes:{
      '/':(context)=> HomePage(),
      '/explore':(context)=>explorePage(),
      '/profile':(context)=>profilePage()
    },
    debugShowCheckedModeBanner: false,
    // home: HomePage(),
  ));
}
