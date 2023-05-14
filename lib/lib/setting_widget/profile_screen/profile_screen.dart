import 'package:flutter/material.dart';
class PRofilescreen extends StatelessWidget {
  const PRofilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Profile'),
        backgroundColor: Colors.teal,
      ),
       body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         child: Column(
           children: [
             Center(
               child: Stack(
                 children: [
                   Container(
                     width: 130,
                     height: 130,
                     decoration: BoxDecoration(
                       border: Border.all(width: 4,color: Colors.white),
                       boxShadow: [
                         BoxShadow(
                           spreadRadius: 2,
                           blurRadius: 10,
                           color: Color(0xffD1D1D1),

                         ),
                       ],
                       shape: BoxShape.circle,
                       image: DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage('assets/image/8.jpg'),
                       ),
                     ),

                   ),
                   Positioned(
                     bottom: 0,
                     right: 0,
                     child: Container(
                       height: 40,
                       width: 40,
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         border: Border.all(width: 4,color: Colors.white),
                         color: Colors.white,
                       ),


                       child: Icon(Icons.camera_alt),


                     ),

                   ),



                 ],
               ),

             ),
             SizedBox(height: 10,),

             Column(
               children: [
                 ListTile(
                   leading: Padding(
                     padding: EdgeInsets.only(top: 8),
                     child: Icon(Icons.person),

                   ),
                   title: Text('Singam Machavarapu',style: TextStyle(fontSize: 20),),
                   subtitle: Text("This is not your username or pin,This name will be\n visible to your Whatsapp contacts,"),
                   trailing: Icon(Icons.edit,color: Colors.green,size: 25,),
                 ),
                 ListTile(
                   leading: Padding(
                     padding: EdgeInsets.only(top: 8),
                     child: Icon(Icons.help),

                   ),
                   title: Text('About',style: TextStyle(fontSize: 20),),
                  subtitle: Text('Love'),

                   trailing: Icon(Icons.edit,color: Colors.green,size: 25,),
                 ),
                 ListTile(
                   leading: Padding(
                     padding: EdgeInsets.only(top: 8),
                     child: Icon(Icons.call),

                   ),
                   title: Text('Phone',style: TextStyle(fontSize: 20),),
                   subtitle: Text('+ 7794032966'),

                   trailing: Icon(Icons.edit,color: Colors.green,size: 25,),
                 ),

               ],
             )
           ],
         ),
       ),

    );
  }
}
