import 'package:flutter/material.dart';
class Accountsscreen extends StatelessWidget {
  const Accountsscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Account',style: TextStyle(fontSize: 25,),),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(Icons.security),

            ),
            title: Text('Security notifications',style: TextStyle(fontSize: 18),),
            //  subtitle: Text("Create, edit, profile photo",style: TextStyle(fontSize: 15),),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(Icons.verified),

            ),
            title: Text('Two-step verfication',style: TextStyle(fontSize: 18),),
            //  subtitle: Text("Create, edit, profile photo",style: TextStyle(fontSize: 15),),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(Icons.phone_android),

            ),
            title: Text('Change number',style: TextStyle(fontSize: 18),),
            //  subtitle: Text("Create, edit, profile photo",style: TextStyle(fontSize: 15),),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(Icons.request_page),

            ),
            title: Text('Request account info',style: TextStyle(fontSize: 18),),
            //  subtitle: Text("Create, edit, profile photo",style: TextStyle(fontSize: 15),),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Icon(Icons.delete),

            ),
            title: Text('Delate my account',style: TextStyle(fontSize: 18),),
            //  subtitle: Text("Create, edit, profile photo",style: TextStyle(fontSize: 15),),
          ),
        ],
      )

    );
  }
}
