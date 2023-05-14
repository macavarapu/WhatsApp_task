import 'package:flutter/material.dart';
class Otherstatus extends StatelessWidget {
   Otherstatus({Key? key, required this.name, required this.time, required this.Imagename, }) : super(key: key);
  final String name;
  final String time;
  final String Imagename;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(Imagename),
          ),
         title: Text(name,
           style: TextStyle(
             fontSize: 15,
             fontWeight: FontWeight.bold
         ),),
      subtitle: Text('Today at$time',
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[900],
      ),
      ),
    );
  }
}
