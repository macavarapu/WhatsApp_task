
import 'package:flutter/material.dart';

import '../../../contacts_ui/button_card.dart';
import '../../../contacts_ui/contacts_card.dart';
import '../../model/chat_model.dart';
import '../create_new_group/create_new_group.dart';


class Slectcontactscard extends StatefulWidget {
  const Slectcontactscard({Key? key}) : super(key: key);

  @override
  _SlectcontactscardState createState() => _SlectcontactscardState();
}

class _SlectcontactscardState extends State<Slectcontactscard> {

  List<ChatModel>Contacts=[
    ChatModel(
      name: "Sing",
      status:"Flutter developer", icon: '', isGroup: false, currentMessage: '', time: '',
      slected: false,
      id:0,


    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<ChatModel>Contacts=[
      ChatModel(
          name: "Singam",
        status:"Flutter developer",
          icon: '',
          isGroup:false ,
          currentMessage: '',
          time: '',
        slected: false,
        id:1,

      ),
      ChatModel(
        name: "Srinu",
        status:"Recat js",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id:2,

      ),
      ChatModel(
        name: "koti",
        status:"Recat Nagative",

        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id:3,

      ),
      ChatModel(
        name: "Sai",
        status:"Recat js",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id:4,

      ),
      ChatModel(
        name: "puli anna",
        status:"Non codeing",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id: 5,

      ),
      ChatModel(
        name: "srinu",
        status:"Recat js",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id: 6,

      ),
      ChatModel(
        name: "Ramesh",
        status:"Android",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id: 7,

      ),
      ChatModel(
        name: "harsah",
        status:"vlic",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id: 8,

      ),
      ChatModel(
        name: "suresh",
        status:"flutter",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id: 8,

      ),
      ChatModel(
        name: "venky",
        status:"flutter",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
        id: 9,

      ),

    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Slect Contact',
              style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold),),
            Text('190 Contacts',style: TextStyle(fontSize: 15,),),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton<String>(
              onSelected: (value){
                print(value);
              },
              itemBuilder: (BuildContext Contaxt){
                return [
                  PopupMenuItem(
                    child: Text('Invite a friend'),
                    value: 'Invite a friend',
                  ),
                  PopupMenuItem(
                    child: Text('Contacts'),
                    value: 'Contacts',
                  ),
                  PopupMenuItem(
                    child: Text('Refresh'),
                    value: 'Refresh',
                  ),
                  PopupMenuItem(
                    child: Text('Help'),
                    value: 'Help',
                  ),

                ];

              }
          ),

        ],
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: Contacts.length,
          itemBuilder: (context, index) {
            if(index==0){
              return  InkWell(
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>CreateNewGroup ()));

                },
                child: Buttoncard(
                  icon:Icons.group,
                  name:'New group', IconData: '',
                ),
              );
            }
            else if(index==1){
              return  Buttoncard(
                icon: Icons.person_add,
                name: 'New contact', IconData: '',
              );
            }
            return  Contactscard(
              Contacts: Contacts[index],
            );
          }


    ),


    );
  }
}
