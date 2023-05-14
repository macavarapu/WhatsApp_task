import 'dart:async';

import 'package:flutter/material.dart';

import '../../../new_screen/landing_screen.dart';
class Flashscreen extends StatefulWidget {
  const Flashscreen({Key? key}) : super(key: key);

  @override
  _FlashscreenState createState() => _FlashscreenState();
}

class _FlashscreenState extends State<Flashscreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 8),
    ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) =>  Landingscreen ())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
           // title:Text("This is the secoind screen"),
        ),

        body: Center(
         child: Column(
           children: [
             Image.asset( 'assets/image/4.png',height: 50,),
             SizedBox(height: 10,),
             Text('GBWhatsApp',style: TextStyle(fontSize: 15,color: Colors.cyan),),
           ],
         ),
        ),

    );
  }
}
