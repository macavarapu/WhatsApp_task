import 'package:flutter/material.dart';
class Headownstatus extends StatelessWidget {
  const Headownstatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.white,
          backgroundImage: AssetImage('assets/image/ntr.png'),
        ),
        Positioned(
          bottom: 0,
            right: 0,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.greenAccent[700],
              child: Icon(Icons.add,size: 20,color: Colors.white,),
            ),
        )
      ],
      ),
      title: Text('My status',
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),

      ),
      subtitle: Text('Tap to  add status update',style: TextStyle(
          fontSize: 15,
          color:Colors.grey[900]
      ),),
    );
  }
}
