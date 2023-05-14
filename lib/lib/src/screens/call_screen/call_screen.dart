import 'package:flutter/material.dart';

class Callscreen extends StatefulWidget {
  const Callscreen({Key? key}) : super(key: key);

  @override
  _CallscreenState createState() => _CallscreenState();
}

class _CallscreenState extends State<Callscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 48,
            child: FloatingActionButton(
              backgroundColor: Colors.greenAccent[700],
              onPressed: (){},
              child: Icon(Icons.delete,
               // color: Colors.blueGrey[900],
              ),

            ),
          ),
          SizedBox(height: 15,),
          FloatingActionButton(
            backgroundColor: Colors.greenAccent[700],
            onPressed: (){},
            elevation: 5,
            child: Icon(Icons.call),


          )
        ],
      ),

      body: ListView(

        children: [
          SizedBox(height: 5,),
          calllink(),
          SizedBox(height: 15,),
          Container(
            height: 33,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 8),
              child: Text('Recent ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
          ),
         // Padding(padding: EdgeInsets.all(10)),
         //  Text('Recent',style: TextStyle(fontSize: 20,color: Colors.teal),),

          SizedBox(height: 20,),
          callcard(
            "Singam",
            Icons.call_made,
            Colors.green,
           "17 APril,5.54pm",
          ),
          callcard(
            "Koti",
            Icons.call_missed,
            Colors.red,
            "17 March,5.54pm",
          ),
          callcard(
            "Srinu",
            Icons.call_received,
            Colors.green,
            "17 june,5.54pm",
          ),
          callcard(
            "Sai",
            Icons.call_made,
            Colors.green,
            "17 july,5.54pm",
          ),
          callcard(
            "Ramesh",
            Icons.call_missed,
            Colors.red,
            "17 Agu,5.54pm",
          ),
          callcard(
            "puli anna",
            Icons.call_received,
            Colors.green,
            "17 APril,5.54pm",
          ),
          callcard(
            "harsha",
            Icons.call_made,
            Colors.green,
            "17 oct,5.54pm",
          ),
          callcard(
            "suresh",
            Icons.call_missed,
            Colors.red,
            "17 may,5.54pm",
          ),
          callcard(
            "venky",
            Icons.call_received,
            Colors.green,
            "17 APril,5.54pm",
          ),
        ],
      ),

    );
  }

  Widget calllink(){
   return ListTile(
     leading: CircleAvatar(
       backgroundColor: Colors.teal,
       child: Icon(Icons.link_outlined,color: Colors.white,),
     ),
     title: Text('Create Call link'),
     subtitle: Text('Share a link for your Whatsapp call'),
   );
  }
  Widget callcard(String name,IconData iconData,Color iconcolor, String time){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.teal,
         radius: 20,
        child: Icon(Icons.person,color:Colors.white ,),
        // child: Image.asset( 'assets/image/koti.jpg'),
      ),
      title: Text(name,
         // 'Text name'
      ),
      subtitle: Row(
        children: [
          Icon(iconData ,
           // Icons.call_made,
            color:iconcolor,
          //  green,size: 28,
          ),
          SizedBox(width: 6,),
          Text(time,
            //  '17 APril,5.54pm'
          ),
        ],
      ),
      trailing: Icon(
        Icons.call,size: 25,color: Colors.teal,),
    );
  }
}


