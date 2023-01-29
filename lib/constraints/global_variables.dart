import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
String uri='http://localhost:8800';
class GlobalVariables{
  //colors

  static const appBarGradiant = LinearGradient(colors:[
    Color.fromARGB(215, 49, 169, 234),
    Color.fromARGB(255, 125, 221, 216),
  ],
    stops: [0.5,1.0]
  );
  static const SecondaryColor=Color.fromARGB(255, 153, 0, 1);
  static const backgroundColor=Colors.white;
  static const Color greyBackgroundColor=Color(0xffebecee);
  static var selectedNavbarcolor=Colors.cyan[800]!;
  static const unselectedNavbarcolor=Colors.black87;

}