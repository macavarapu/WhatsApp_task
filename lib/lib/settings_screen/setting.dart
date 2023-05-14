import 'package:flutter/material.dart';

import '../setting_widget/account_screen/account_screen.dart';
import '../setting_widget/avatar_screen/avatar.dart';
import '../setting_widget/chats_screen/chats.dart';
import '../setting_widget/notification_screen/notification_screen.daart.dart';
import '../setting_widget/privacy_screen/privacy.dart';
import '../setting_widget/profile_screen/profile_screen.dart';
class Settingscreen extends StatelessWidget {
  const Settingscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.teal,
      appBar: AppBar(
       // centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Setting',style: TextStyle(fontSize: 20,),),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PRofilescreen()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child:
                        //Icon(Icons.account_circle,size: 50,),
                       Image.asset('assets/image/8.jpg',height: 65,width: 65,),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Singam Machavarapu',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 8,),
                          Text('Hey there I am using whatsapp',style: TextStyle(fontSize: 15),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Accountsscreen ()));
                },
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(Icons.key),

                  ),
                  title: Text('Account',style: TextStyle(fontSize: 18),),
                  subtitle: Text("security notifications,Change number",style: TextStyle(fontSize: 15),),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Privacyscreen ()));
                },
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(Icons.lock),

                  ),
                  title: Text('Privacy',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Block contacts, disappearing message",style: TextStyle(fontSize: 15),),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Avatarscreen ()));
                },
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(Icons.av_timer),

                  ),
                  title: Text('Avatar',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Create, edit, profile photo",style: TextStyle(fontSize: 15),),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Chatsscreen ()));
                },
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(Icons.chat),

                  ),
                  title: Text('Chats',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Theme wallpaper, chat history",style: TextStyle(fontSize: 15),),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Notificationscreen ()));
                },
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(Icons.notifications),

                  ),
                  title: Text('Notification',style: TextStyle(fontSize: 18),),
                  subtitle: Text("Message, group & call tones",style: TextStyle(fontSize: 15),),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Icon(Icons.replay),

                ),
                title: Text('Storage and data',style: TextStyle(fontSize: 18),),
                subtitle: Text("Network usage ,auto _dowload",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Icon(Icons.language),

                ),
                title: Text('App language',style: TextStyle(fontSize: 18),),
                subtitle: Text("English(phone's language",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Icon(Icons.help),

                ),
                title: Text('Help',style: TextStyle(fontSize: 18),),
                subtitle: Text("Help centre ,contact us,privacy policy",style: TextStyle(fontSize: 15),),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Icon(Icons.people_alt),

                ),
                title: Text('Invite a friend',style: TextStyle(fontSize: 18),),

              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 60),
                child: Column(
                  children: [
                    Text('From',style: TextStyle(fontSize: 15),),

                    Text('Facebook',style: TextStyle(fontSize: 15),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
