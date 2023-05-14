import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../custom_ui/onmessage_card.dart';
import '../../custom_ui/reply_card.dart';
import '../../model/chat_model.dart';
import '../camera_screen/camera_screen.dart';
class Individualcard extends StatefulWidget {
   Individualcard({Key? key, required this.chatModel }) : super(key: key);
  final  ChatModel chatModel ;

  @override
  _IndividualcardState createState() => _IndividualcardState();
}

class _IndividualcardState extends State<Individualcard> {


  bool show = false;
  FocusNode focusNode=FocusNode();
  TextEditingController _controller=TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode.addListener(() {
      setState(() {
        show=false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back),
              CircleAvatar(
                child: Icon(Icons.account_circle,color: Colors.white,),
                radius: 20,
                backgroundColor: Colors.blueGrey[200],
              ),

            ],
          ),
        ),
        title: InkWell(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chatModel.name,
                  style: TextStyle(fontSize: 19,
                    fontWeight: FontWeight.bold),
                ),
                Text("last seen today at 9:30",style: TextStyle(fontSize: 13),)
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.videocam)),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              itemBuilder: (BuildContext Contaxt) {
                return [
                  PopupMenuItem(
                    child: Text('View contact'),
                    value: 'View contact',
                  ),
                  PopupMenuItem(
                    child: Text('Media, links, and docs'),
                    value: 'Media, links, and docs',
                  ),
                  PopupMenuItem(
                    child: Text('Search'),
                    value: 'Search',
                  ),
                  PopupMenuItem(
                    child: Text('Whats app Web'),
                    value: 'Whats app Web',
                  ),
                  PopupMenuItem(
                    child: Text('Mut Notification'),
                    value: 'Mut notification',
                  ),
                  PopupMenuItem(
                    child: Text('Wallpaper'),
                    value: 'Wallpaper',
                  ),
                ];
              }
          ),

        ],
        backgroundColor: Colors.teal,
      ),
      body: Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: WillPopScope(

          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height-170,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Onmessagecard(),
                    Replycard(),
                    Onmessagecard(),
                    Replycard(),
                    Onmessagecard(),
                    Replycard(),
                    Onmessagecard(),
                    Replycard(),
                    Onmessagecard(),
                    Replycard(),
                    Onmessagecard(),
                    Replycard(),
                    Onmessagecard(),
                    Replycard(),
                    Onmessagecard(),
                    Replycard(),
                                   ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Container(
                            width: MediaQuery
                                .of(context)
                                .size
                                .width - 55,
                            child: Card(
                                margin: EdgeInsets.only(
                                  left: 2, right: 2, bottom: 8,),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: TextFormField(
                                  controller: _controller,
                                  focusNode: focusNode,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 5,
                                  minLines: 1,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Type a Message",
                                    prefixIcon: IconButton(
                                      icon: Icon(Icons.emoji_emotions),

                                      onPressed: () {
                                        focusNode. unfocus();
                                        focusNode.canRequestFocus=false;
                                        setState(() {
                                          show =! show;
                                        });
                                      },
                                      // setState(() {
                                      //  show=!show;
                                      // });

                                    ),
                                    suffixIcon: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        IconButton(
                                          onPressed: () {

                                            showModalBottomSheet(
                                                backgroundColor: Colors.transparent,
                                                context: context,
                                                builder: (context)=> bottomsheet());
                                          },
                                          icon: Icon(Icons.attach_file),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GalleryAccess()));
                                          },
                                          icon: Icon(Icons.camera_alt),
                                        ),
                                      ],
                                    ),
                                    contentPadding: EdgeInsets.all(5),
                                  ),
                                ))),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: CircleAvatar(
                            backgroundColor: Colors.teal,
                            radius: 25,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.mic),
                            ),
                          ),
                        ),
                      ],
                    ),
                    show ? emojiSelected() : Container(),
                  ],
                ),
              ),
            ],
          ),
          onWillPop: () {
            if(show){
              setState(() {
                show=false;
              });
            }
            else{
              Navigator.pop(context);
            }
            return Future.value(false);
          },
        ),
      ),
    );
  }

  Widget bottomsheet(){
    return Container(
      height: 280,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical:10 ),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconcreaction(Icons.insert_drive_file,Colors.indigo, "Document"),
                  SizedBox(width: 20,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GalleryAccess()));
                    },
                      child: iconcreaction(Icons.camera_alt,Colors.pink, "Camer")),
                  SizedBox(width: 20,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GalleryAccess()));
                    },
                      child: iconcreaction(Icons.insert_photo,Colors.purple, "Gallery")),
                  SizedBox(width: 20,),
                  iconcreaction(Icons.headset,Colors.deepOrange, "Audio"),
                  SizedBox(width: 20,),

                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  iconcreaction(Icons.location_on,Colors.green, "Location"),
                  SizedBox(width: 40,),
                  iconcreaction(Icons.person_sharp,Colors.blue, "Contact"),
                  SizedBox(width: 40,),
                  iconcreaction(Icons.bar_chart_rounded,Colors.teal, "Pollt"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget iconcreaction(IconData icon  ,Color color,String text){
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(icon,size: 29,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5,),
        Text(text,style: TextStyle(fontSize: 15),),
      ],
    );
  }
  Widget emojiSelected() {
    return EmojiPicker(
      onEmojiSelected: (emoji, categery) {

        print(emoji);
        setState(() {
          var emoji;
          _controller.text=_controller.text*emoji?.emoji;
        });
      },);
  }
      

  }

