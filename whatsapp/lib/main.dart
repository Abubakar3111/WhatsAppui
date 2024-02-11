import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp/home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.teal,
          useMaterial3: false
      ),
      home: SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void check() async{

    Timer(Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>

        HomeScreen())));

  }
  void initState() {
    // TODO: implement initState
    super.initState();
    check();
  }
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network('https://download.logo.wine/logo/WhatsApp/WhatsApp-Logo.wine.png',height: height*0.8,),

          Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Meta-Logo.png/640px-Meta-Logo.png',height: height*0.08,)
          ],

    )

    );
  }
}
//https://i.redd.it/nabfncvpsn241.jpg https://pbs.twimg.com/media/Fub0azWXoAEH0_w.jpg:large
