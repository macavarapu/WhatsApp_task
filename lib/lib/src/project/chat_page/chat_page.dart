import 'package:flutter/material.dart';

import '../../custom_ui/custom_card.dart';
import '../../model/chat_model.dart';
import '../../screens/individual_card/individual_card.dart';
import '../../screens/slect_contacts_card/slect_contacts_card.dart';
class Chatpage extends StatefulWidget {
  const Chatpage({Key? key}) : super(key: key);

  @override
  _ChatpageState createState() => _ChatpageState();
}

class _ChatpageState extends State<Chatpage> {
  List<ChatModel>Chats=[
    ChatModel(
      name:"singam",
      isGroup:false,
      currentMessage:"Hello",
      time:"5:30",
      icon:"account_circle", status: '',
      slected: false,
        id:123,
    ),
    ChatModel(
      name:"srinu",
      isGroup:true,
      currentMessage:"Hi ",
      time:"6:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
    ChatModel(
      name:"Koti",
      isGroup:false,
      currentMessage:"Hello",
      time:"8:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
    ChatModel(
      name:"sai",
      isGroup:true,
      currentMessage:"Hi ",
      time:"9:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
    ChatModel(
      name:"puli",
      isGroup:false,
      currentMessage:"Hi ",
      time:"5:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
    ChatModel(
      name:"Ramesh",
      isGroup:false,
      currentMessage:"I am good boy",
      time:"5:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
    ChatModel(
      name:"suresh",
      isGroup:false,
      currentMessage:"Hi everyone",
      time:"5:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
    ChatModel(
      name:"harsah",
      isGroup:false,
      currentMessage:"so Brathuke so Better",
      time:"5:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
    ChatModel(
      name:"venky",
      isGroup:false,
      currentMessage:"hope must never die",
      time:"5:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
    ChatModel(
      name:"friend",
      isGroup:false,
      currentMessage:"I love my family",
      time:"5:30",
      icon:"account_circle", status: '',
      slected: false,
      id:123,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
                builder: (context) =>  Slectcontactscard ()),
            //(Route<dynamic> route) => false
          );
        },
        child:Icon(Icons.chat) ,
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount:Chats.length ,
          itemBuilder: (context, index) =>Customcard(
              chatModel: Chats[index] ),
      ),

    );
  }
}
