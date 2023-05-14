import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../src/model/chat_model.dart';

class AvtarCard extends StatelessWidget {
   AvtarCard({Key? key, required this.Contacts }) : super(key: key);
  final ChatModel Contacts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: [

           Stack(
            children: [
              CircleAvatar(
                radius: 20,
                child: Icon(Icons.person,color: Colors.white,size: 35,),
                backgroundColor: Colors.blueGrey[200],
              ),
               Positioned(
                bottom: 0.5,
                right: 1,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 11,
                  child: Icon(
                    Icons.clear,color: Colors.white,size: 11,),
                ),
              ),

            ],
          ),
         SizedBox(height: 2,),
         Text(Contacts.name,
           style: TextStyle(fontSize: 11),),

         // Container(),
        ],
      ),
    );
  }
}
