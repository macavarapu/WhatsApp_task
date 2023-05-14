import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class Landingscreen extends StatelessWidget {
  const Landingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(

          child: Column(

            children: [
              SizedBox(height: 50,),
              Text('Welcome to Whatsapp',
                style: TextStyle(
                  fontSize: 29,
                  color: Colors.teal,
                 // fontWeight: FontWeight.w600,

                ),
                ),
              SizedBox(height: MediaQuery.of(context).size.height/20,),
              Image.asset('assets/image/2.jpg',height: 340,width: 340,),
              SizedBox(height: MediaQuery.of(context).size.height/19,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),

                child: RichText(
                  textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      children: [
                        TextSpan(
                          text: "Age  and continue accepts the",
                            style: TextStyle(
                              color: Colors.grey[600],
                            )
                        ),
                        TextSpan(
                          text: "Whatsapp and Tearms privice polycee",
                          style: TextStyle(
                            color: Colors.cyan,
                          )
                        ),
                      ]
                    ),
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){
                  Navigator.of(context).push
                    (MaterialPageRoute(builder: (context)=> Loginpage ()));

                },
                child: Container(
                  width: MediaQuery.of(context).size.width-110,
                  height: 50,
                  child: Card(
                    margin: EdgeInsets.all(0),
                    elevation: 8,
                    color: Colors.greenAccent[700],
                    child: Center(
                        child: Text('AGREE AND CONTINUE ')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
