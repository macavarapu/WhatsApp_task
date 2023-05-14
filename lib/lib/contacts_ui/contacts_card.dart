import 'package:flutter/material.dart';

import '../src/model/chat_model.dart';

class Contactscard extends StatelessWidget {
  const Contactscard({Key? key, required this.Contacts }) : super(key: key);
  final ChatModel Contacts;

  @override
  Widget build(BuildContext context) {
    return

      ListTile(
        leading: Container(
          height: 53,
          width: 50,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 20,
                child: Icon(Icons.account_circle,color: Colors.white,),
                backgroundColor: Colors.blueGrey[200],
              ),
             Contacts.slected? Positioned(
                bottom: 4,
                right: 5,
                child: CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 11,
                  child: Icon(
                    Icons.check,color: Colors.white,size: 15,),
                ),
              )
              :Container(),
            ],
          ),
        ),
        title: Text(
          Contacts.name,
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        subtitle: Text(
          Contacts.status,
          style: TextStyle(fontSize: 13),),


    );
  }
}
