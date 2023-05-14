import 'package:flutter/material.dart';
class Avatarscreen extends StatelessWidget {
  const Avatarscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Avatar',style: TextStyle(fontSize: 20,),),
            backgroundColor: Colors.teal,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/image/7.png'),
          SizedBox(height: 20,),
          Text('Say more with Avatars notw on Whatsapp',
            style: TextStyle(
                fontSize: 20,color:Colors.black ),),
          Padding(
            padding: EdgeInsets.only(left: 30,top: 10),
          ),

          SizedBox(height: 20,),

          ElevatedButton(

            child: Text('Create your Avatar',style: TextStyle(color: Colors.black),),

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
