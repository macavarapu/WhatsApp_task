import 'package:flutter/material.dart';
class Chatsscreen extends StatelessWidget {
  const Chatsscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Chats',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Display',style: TextStyle(fontSize: 20),),

            ),

            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Icon(Icons.wallpaper),
              ),
              title: Text('Wallpaper',style: TextStyle(fontSize: 15),),

            ),
            

            ListTile(
              title: Text('Chats Settings',style: TextStyle(fontSize: 15),),

            ),
            ListTile(
              title: Text('Enter is send',style: TextStyle(fontSize: 20),),
              subtitle: Text("Enter key will send your Mesage"),
              trailing: Icon(Icons.toggle_off,size: 25,color: Colors.black,),
            ),
            ListTile(
              title: Text('Media visibillity',style: TextStyle(fontSize: 20),),
              subtitle: Text("Show newly dowloaded media in your device's galley"),
              trailing: Icon(Icons.toggle_on,color: Colors.green,size: 25,),
            ),
            ListTile(
              title: Text('Font size',style: TextStyle(fontSize: 20),),
              subtitle: Text("Medium"),

            ),
            ListTile(
              title: Text('Achived chats',style: TextStyle(fontSize: 20),),

            ),

            ListTile(
              title: Text('Keep chats archived',style: TextStyle(fontSize: 20),),
              subtitle: Text("Archived chats will remain archived when\n you rechive a new Message"),
              trailing: Icon(Icons.toggle_off,color: Colors.black,size: 25,),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Icon(Icons.backup),
              ),
              title: Text('Chat backupr',style: TextStyle(fontSize: 15),),
              // subtitle: Text("Theme wallpaper, chat history",style: TextStyle(fontSize: 15),),
            ),
            ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top: 8),
                child: Icon(Icons.history),
              ),
              title: Text('Chat history',style: TextStyle(fontSize: 15),),
              // subtitle: Text("Theme wallpaper, chat history",style: TextStyle(fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }
}
