import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:whatsapp_task/lib/new_screen/profile_screen.dart';


class OTPscreen extends StatefulWidget {
  const OTPscreen({Key? key, required this.number, required this.Countrycode } ) : super(key: key);
  final String number;
  final String Countrycode;

  @override
  _OTPscreenState createState() => _OTPscreenState();

}
class _OTPscreenState extends State<OTPscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Verify+${ widget. Countrycode}" "${widget.number}",
          style: TextStyle(color: Colors.teal[600]),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.more_vert,color: Colors.black,)
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
       // padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "We have sent an SMS with code to",style: TextStyle(fontSize: 20,color: Colors.teal[600]),
                    ),
                    TextSpan(
                      text: "+"+ widget.Countrycode +""+ widget.number+""+widget.number,
                        style: TextStyle(fontSize: 15,color: Colors.black),

                    ),
                    TextSpan(
                     text: "Worning number",style: TextStyle(fontSize: 18,color: Colors.teal),
                    ),
                  ]
                ),


            ),
            SizedBox(height: 5,),
            OTPTextField(
              length: 6,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 50,
              style: TextStyle(
                  fontSize: 17
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(height: 30,),
            Text('Enter 6 -digite code',style: TextStyle(fontSize: 18,color: Colors.grey[400]),),
            SizedBox(height: 30,),
            bottomButton(
              "Recent SMS",
              Icons.message,

            ),
            SizedBox(height: 18,),
            Divider(
              thickness: 1.5,
            ),
            SizedBox(height: 12,),
            bottomButton(
              "Call me",
              Icons.call,
            ),
            SizedBox(height: 12,),
            Divider(
              thickness: 1.5,
            ),
            SizedBox(height: 40,),
            Container(
              height: 40,
              width: 70,
              color: Colors.tealAccent[400],
              child: Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profilescreen()));
                    },
                    child: Text('NEXT',style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700
                    ),),
                  )),
            ),

          ],
        ),
      ),

    );
  }
  Widget bottomButton(String text  ,IconData icon){
    return Row(

      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 6),
        ),
        Icon(icon,
          size: 30,color: Colors.teal,),
        SizedBox(width: 20,),
        Text(text,
          style: TextStyle(fontSize: 20,color: Colors.teal),),


      ],

    );
  }
}
