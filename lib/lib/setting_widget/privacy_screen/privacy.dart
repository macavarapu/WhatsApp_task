import 'package:flutter/material.dart';
class Privacyscreen extends StatelessWidget {
  const Privacyscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Privacy',style: TextStyle(fontSize: 25),),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
              children: [
                Text('Who can see my personal info',style: TextStyle(fontSize: 20, )),
                Divider(),

                ListTile(
                  title: Text('Last seen and online',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Everryone",style: TextStyle(fontSize: 15),),
                ),
                ListTile(
                  title: Text('Profile photo',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Everryone",style: TextStyle(fontSize: 15),),
                ),
                ListTile(
                  title: Text('About',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Everryone",style: TextStyle(fontSize: 15),),
                ),
                ListTile(
                  title: Text('Status',style: TextStyle(fontSize: 18),),
                  subtitle: Text("My contacts",style: TextStyle(fontSize: 15),),
                ),
                ListTile(
                  title: Text('Read receipts',style: TextStyle(fontSize: 20),),
                  subtitle: Text("If turined off, you won't send or recevie Read\n receipts are always sent for  group\nchats"),
                  trailing: Icon(Icons.toggle_off,color: Colors.green,size: 25,),
                ),
                ListTile(
                  title: Text('Disappearing messages',style: TextStyle(fontSize: 20),),

                ),
                ListTile(
                  title: Text('Default Message timer',style: TextStyle(fontSize: 20),),
                  subtitle: Text("Start new chats with disappearing Messages set\n to your timer"),
                  trailing: Text('Off',style: TextStyle(fontSize: 20,color: Colors.black),),
                ),

                ListTile(
                  title: Text('Groups',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Everyone",style: TextStyle(fontSize: 15),),
                ),
                ListTile(
                  title: Text('Live location',style: TextStyle(fontSize: 18),),
                  subtitle: Text("None",style: TextStyle(fontSize: 15),),
                ),
                ListTile(
                  title: Text('Block',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Everyone",style: TextStyle(fontSize: 15),),
                ),
                ListTile(
                  title: Text('Fingerprint',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Disabled",style: TextStyle(fontSize: 15),),
                ),

               ],

              ),
             ),
             ),
             );

  }
}
