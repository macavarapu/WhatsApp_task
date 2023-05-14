import 'package:flutter/material.dart';
class Notificationscreen extends StatelessWidget {
  const Notificationscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Notification'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            children: [
              ListTile(
                title: Text('Conversation tons',style: TextStyle(fontSize: 20),),
                subtitle: Text("Play sounds for incoming and  outgoing messages"),
                trailing: Icon(Icons.toggle_on,color: Colors.green,size: 25,),
              ),

              ListTile(
                title: Text('Messages',style: TextStyle(fontSize: 18),),

              ),
              ListTile(
                title: Text('Notification',style: TextStyle(fontSize: 18),),
                subtitle: Text("Default(Clank.ogg",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                title: Text('Vibrate',style: TextStyle(fontSize: 18),),
                subtitle: Text("Default",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                title: Text('Light',style: TextStyle(fontSize: 20),),
                subtitle: Text("White"),
                // trailing: Icon(Icons.toggle_off,color: Colors.green,size: 25,),
              ),
              ListTile(
                title: Text('Use high priorty notification',style: TextStyle(fontSize: 20),),
                subtitle: Text("Show previews of notifications atnthentop  at the top of  the screen"),
                 trailing: Icon(Icons.toggle_on,color: Colors.green,size: 25,),

              ),
              ListTile(
                title: Text('Reaction Notifications',style: TextStyle(fontSize: 20),),
                subtitle: Text("Show notification for reaction to messages you send"),
                trailing:  Icon(Icons.toggle_on,color: Colors.green,size: 25,),

              ),

              ListTile(
                title: Text('Groups',style: TextStyle(fontSize: 18),),

              ),

            ],

          ),
        ),
      ),
    );
  }
}
