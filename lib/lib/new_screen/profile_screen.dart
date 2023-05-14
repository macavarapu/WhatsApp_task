import 'package:flutter/material.dart';

import '../src/screens/home_screen/home_screen.dart';
class Profilescreen extends StatelessWidget {
   Profilescreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile info",
          style: TextStyle(color: Colors.teal[600]),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert,color: Colors.black,)
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Text('Please provide your name and an optional profile photo',
                style: TextStyle(fontSize: 15,
                    color: Colors.grey[600],
                  fontWeight: FontWeight.w600
                ),
              ),
             SizedBox(height: 40,),
             Column(
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
                               // color: Colors.black.withOpacity(0.1),
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


                           child: Icon(Icons.edit),

                         ),
                       ),

                     ],
                   ),
                 ),

                 SizedBox(height: 10,),
                 Column(
                   children: [
                     TextFormField(
                       obscureText: false,
                       validator: (value){
                         if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)){
                           //allow upper and lower case alphabets and space
                           return "Enter Correct Name";
                         }else{
                           return null;
                         }
                       },
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.person),
                         hintText: 'Enter name',
                         suffixIcon: Icon(Icons.emoji_emotions_outlined),
                       ),
                     ),

                   ],
                 ),
                 SizedBox(height: 40,),
                 ElevatedButton(
                   child: Text('Next',style: TextStyle(color: Color(0xffFFFFFF)),),
                   onPressed: () {
                     if (_formKey.currentState!.validate()) {
                       ScaffoldMessenger.of(context).showSnackBar(
                         const SnackBar(content: Text('Processing Data')),
                       );
                       Navigator.of(context).push(
                         MaterialPageRoute(
                             builder: (context) => Homescreen  ()),
                       );
                     }
                   },
                   style: ElevatedButton.styleFrom(
                       shape: StadiumBorder(),
                       primary: Color(0xff212325),
                       padding: EdgeInsets.symmetric(
                           horizontal: 80, vertical: 10),
                       textStyle: TextStyle(
                         fontSize: 20,

                       )),
                 ),

               ],
             ),
             // Image.asset("assets/image/ntr.png"),
            ],
          ),
        ),
      ),
    );
  }
}
