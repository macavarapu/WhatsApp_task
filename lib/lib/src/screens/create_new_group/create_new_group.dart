import 'package:flutter/material.dart';

import '../../../contacts_ui/avtar_card.dart';
import '../../../contacts_ui/button_card.dart';
import '../../../contacts_ui/contacts_card.dart';
import '../../model/chat_model.dart';
class CreateNewGroup extends StatefulWidget {
  const CreateNewGroup({Key? key}) : super(key: key);

  @override
  _CreateNewGroupState createState() => _CreateNewGroupState();
}

class _CreateNewGroupState extends State<CreateNewGroup> {

  List<ChatModel>Contacts=[
    ChatModel(
      name: "Sing",
      status:"Flutter developer", icon: '', isGroup: false, currentMessage: '', time: '',
      slected: false,
      id:1,

    ),
  ];

List<ChatModel>group=[];
  @override
  Widget build(BuildContext context) {
    List<ChatModel> mContacts=[
      ChatModel(
        name: "Singam",
        status:"Flutter developer",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,

          id:2

      ),
      ChatModel(
        name: "Srinu",
        status:"Recat js",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:3
      ),
      ChatModel(
        name: "koti",
        status:"Recat Nagative",

        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:4
      ),
      ChatModel(
        name: "Sai",
        status:"Recat js",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:5
      ),
      ChatModel(
        name: "puli anna",
        status:"Non codeing",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:6
      ),
      ChatModel(
        name: "Ramesh",
        status:"Andhirode",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:7
      ),
      ChatModel(
        name: "Ramesh",
        status:"Android",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:8
      ),
      ChatModel(
        name: "harsah",
        status:"vlic",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:9
      ),
      ChatModel(
        name: "suresh",
        status:"flutter",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:10
      ),
      ChatModel(
        name: "venky",
        status:"flutter",
        icon: '',
        isGroup:false ,
        currentMessage: '',
        time: '',
        slected: false,
          id:11
      ),

    ];

    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New group',
              style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold),),
            Text('Add participants',style: TextStyle(fontSize: 15,),),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          ),

        ],
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          ListView.builder(
              itemCount: mContacts.length,
              itemBuilder: (context, index) {
                return  InkWell(
                  onTap: (){
                    if( mContacts[index].slected==true){
                      print("if");

                      setState(() {
                        group.remove( mContacts[index]);
                        mContacts[index].slected=false;
                       // group.remove( Contacts[index]);
                      });
                    }
                    else{
                     // print("elseif");
                      setState(() {
                        group.add( mContacts[index]);
                        mContacts[index].slected = true;
                       // group.remove( Contacts[index]);
                      });
                    }
                  },
                  child: Contactscard(
                    Contacts: mContacts[index],
                  ),
                );
              }

          ),
        // group.length>0?
         Column(
            children: [
              Container(
                height: 80,
                color: Colors.white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: group.length,
                    itemBuilder:(context, index) {

                        return  InkWell(
                          onTap: (){
                            setState(() {
                              group.remove(index);

                 for(var i=0; i<mContacts.length; i++){
                      if(mContacts[i].id == group[index].id){
                        mContacts[index].slected=false;
                      }
                 }

                             // mContacts[index].slected=false;
                            });
                          },
                            child: AvtarCard(  Contacts: mContacts[index],));

                    }

                ),

              ),
              Divider(thickness: 1,)
            ],
          ),
            // :Container(),
        ],
      ),



    );
  }
}
