import 'package:flutter/material.dart';
class Buttoncard extends StatelessWidget {
  const Buttoncard({Key? key, required this.name, required this.icon, required String IconData }) : super(key: key);
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 20,
        child: Icon(
          icon),
        backgroundColor: Colors.green,
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),


    );
  }
}
