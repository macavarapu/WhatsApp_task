import 'package:flutter/material.dart';

import '../../../settings_screen/setting.dart';
import '../../../started_messages/started_message.dart';
import '../../project/chat_page/chat_page.dart';
import '../../project/group_page/group_page.dart';
import '../../project/status_page/status_page.dart';
import '../call_screen/call_screen.dart';
import '../camera_screen/camera_screen.dart';
import '../create_new_group/create_new_group.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final Navigatorkey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    var _Controller;
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.teal,
          title: Text('WhatsApp',
              style: TextStyle(
                color: Colors.white,
              )),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.wifi),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.wb_sunny),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GalleryAccess()));
              },
              icon: Icon(Icons.camera_alt_outlined),
            ),
            PopupMenuButton<String>(
                elevation: 0,
                onSelected: (value) {
                  print('' + value);
                  if ('New group' == value) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CreateNewGroup()));
                  }
                  //else if('New group'==value){}

                  else if ('new broadcast' == value) {}
                  // else if('new broadcast'==value){}
                  else if ('Whats app Web' == value) {}
                  // else if('Whats app Web'==value){}
                  else if ('Starred Messages' == value) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Startedmessage()));
                  }
                  //else if('Starred Messages'==value){}
                  else if ('Settings' == value) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Settingscreen()));
                  }
                  // else if('Settings'==value){}
                },
                itemBuilder: (BuildContext Contaxt) {
                  return [
                    PopupMenuItem(
                      child: Text('New group'),
                      value: 'New group',
                    ),
                    PopupMenuItem(
                      child: Text('new broadcast'),
                      value: 'New broadcast',
                    ),
                    PopupMenuItem(
                      child: Text('Whats app Web'),
                      value: 'Whats app Web',
                    ),
                    PopupMenuItem(
                      child: Text('Starred Messages'),
                      value: 'Starred Messages',
                    ),
                    PopupMenuItem(
                      child: Text('Settings'),
                      value: 'Settings',
                      onTap: () {
                        // print('sss');
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Settingscreen()));
                      },
                    ),
                  ];
                }),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(),
          ),
          bottom: TabBar(
            controller: _Controller,
            tabs: [
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                  child: Text(
                "STATUS",
              )),
              Tab(
                  child: Text(
                "CALLS",
              )),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          controller: _Controller,
          children: [
            Grouppage(),
            // Camerapage(),
            // Text("person"),
            Chatpage(),
            // Text("Chats"),
            Statuspage(),
            //Text("Status"),
            Callscreen(),
            // Text("Calls"),
          ],
        ),
      ),
    );
  }


}
