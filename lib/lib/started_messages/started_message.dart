import 'package:flutter/material.dart';
class Startedmessage extends StatelessWidget {
  const Startedmessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Starred Message'),
        backgroundColor: Colors.teal,

      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Image.asset('assets/image/9.jpg'),
          SizedBox(height: 50,),
          Text('Tap and hold on any message\n in any chat to start it, so you can\n easily find it later',
            style: TextStyle(
                fontSize: 20,color:Colors.black ),),
        ],
      ),

    );
  }
}
