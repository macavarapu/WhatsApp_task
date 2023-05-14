import 'package:flutter/material.dart';

import '../../../contacts_ui/headown_status.dart';
import '../../../contacts_ui/other_status.dart';
import '../../screens/camera_screen/camera_screen.dart';
class Statuspage extends StatefulWidget {
  const Statuspage({Key? key}) : super(key: key);

  @override
  _StatuspageState createState() => _StatuspageState();
}

class _StatuspageState extends State<Statuspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
                onPressed: (){},
              child: Icon(Icons.edit,
                color: Colors.blueGrey[900],
              ),

            ),
          ),
          SizedBox(height: 15,),
          FloatingActionButton(
            backgroundColor: Colors.greenAccent[700],
              onPressed: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GalleryAccess()));

              },
            elevation: 5,
            child: Icon(Icons.camera_alt),


          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Headownstatus(),
            //label("Recent Updates"),
            Container(
              height: 33,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 8),
                child: Text('Recent update',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              ),
            ),
            Otherstatus(
              name: "NTR",
              time: " 1:30 pm",
              Imagename: "assets/image/ntr.png",
            ),
            Otherstatus(
              name: "koti",
              time: " 2:30 pm",
              Imagename: "assets/image/koti.jpg",
            ),
            Otherstatus(
              name: "srinu",
              time: " 3:30 pm",
              Imagename: "assets/image/ntr.png",
            ),
            Otherstatus(
              name: "sai",
              time: " 4:30 pm",
              Imagename: "assets/image/ntr.png",
            ),
            SizedBox(height: 10,),
            label("View Updates"),
            Otherstatus(
              name: "NTR",
              time: " 1:30 pm",
              Imagename: "assets/image/ntr.png",
            ),
            Otherstatus(
              name: "koti",
              time: " 2:30 pm",
              Imagename: "assets/image/koti.jpg",
            ),
            Otherstatus(
              name: "srinu",
              time: " 3:30 pm",
              Imagename: "assets/image/ntr.png",
            ),
            Otherstatus(
              name: "sai",
              time: " 4:30 pm",
              Imagename: "assets/image/ntr.png",
            ),
          ],
        ),
      ),
    );
  }
  Widget label(String labelname){
    return  Container(
      height: 33,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 8),
        child: Text(
          labelname,
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
