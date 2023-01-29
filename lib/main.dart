import 'package:flutter/material.dart';
import 'package:homerentpro/pages/HomePage.dart';
import 'package:homerentpro/pages/LoginScreen.dart';
import 'package:homerentpro/pages/signup.dart';
import 'package:homerentpro/utility/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes:{
        "/":(context)=>LoginScreen(),
        Myroutes.signupRoute:(context)=>Signup(),
        Myroutes.homeRoute:(context)=>HomePage(),
      //  Myroutes.userprofileRoute:(context)=>UserProfile(),
      } ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(


      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
