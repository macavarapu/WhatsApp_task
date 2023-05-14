import 'package:flutter/material.dart';
class Grouppage extends StatelessWidget {
  const Grouppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/image/3.jpg'),
          SizedBox(height: 20,),
          Text('Introducing communities',
            style: TextStyle(
              fontSize: 25,color:Colors.white ),),
          Padding(
              padding: EdgeInsets.only(left: 30,top: 10),
          ),
          Text("Easily organise your related groups and send \Nannouncement Now you communites,Like\nneighbourhoods or schools, can Have their own\n         speceE",
            style: TextStyle(
              fontSize: 17,
                color: Colors.teal
            ),),
          SizedBox(height: 20,),

          ElevatedButton(

            child: Text('Start your community',style: TextStyle(color: Colors.black),),

            onPressed: () {
              // Navigator.of(context).push
              //   (MaterialPageRoute(builder: (context)=> HomeScreen ()));

            },

            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                primary: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                textStyle: TextStyle(
                  fontSize: 20,
                )),

          ),

        ],
      ),
    );
  }
}
