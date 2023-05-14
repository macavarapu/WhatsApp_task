import 'package:flutter/material.dart';


import '../model/chat_model.dart';
import '../model/chat_model.dart';
import '../model/chat_model.dart';
import '../model/chat_model.dart';
import '../screens/individual_card/individual_card.dart';
class Customcard extends StatelessWidget {


   Customcard( {Key? key,required this.chatModel,    }) : super(key: key);
  final   ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) =>  Individualcard (chatModel: chatModel,)),
          //(Route<dynamic> route) => false
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.group,color: Colors.white,),
              backgroundColor: Colors.blueGrey[200],
              radius: 30,

            ),
            title: Text(
              chatModel.name,
              style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
            subtitle: Row(
              children: [
                Icon(Icons.done_all,),
               SizedBox(width: 3,),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(fontSize: 20),),
              ],
            ),
            trailing: Text(
              chatModel.time,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}

