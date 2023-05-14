import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'country_model.dart';
import 'country_page.dart';
import 'otp_screen.dart';
class Loginpage extends StatefulWidget {
   Loginpage({Key? key}) : super(key: key);
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String Countryname="indian";
  String Countrycode="+91";
  String phonenumber="";
  TextEditingController _controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Enter your phone number',
          style: TextStyle(
            fontWeight:FontWeight.w700,
          color: Colors.teal,
          fontSize: 20,
          wordSpacing: 1,
        ),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.more_vert,color: Colors.black,),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text('WhatsApp will send  an sms message to verifiy your number',
              style: TextStyle(
                  fontSize: 14
              ),   ),
            SizedBox(height: 5,),
            Text("What's my  number?",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.cyan[800]
              ),),
            SizedBox(height: 15,),
            Countrycard(),
            SizedBox(height: 15,),
             number(),
            SizedBox(height: 5,),
            Expanded(
                child: Container()),
            InkWell(
              onTap: (){
                print(_controller.text.length);

                  _showMyDialog(_controller.text.length==10);

                //_showMyDialog();
              },
              child: Container(
                height: 40,
                width: 70,
                color: Colors.tealAccent[400],
                child: Center(
                    child: Text('NEXT',style: TextStyle(
                        fontSize: 15,
                      fontWeight: FontWeight.w700
                    ),)),
              ),
            ),
            SizedBox(height: 20,),

          ],
        ),),
    );
  }
  Widget Countrycard(){
    return InkWell(
      onTap: (){
        Navigator.of(context).push
          (MaterialPageRoute(builder: (context)=> Countrypage  (
          setCountryData : setCountryData

          )));

      },
      child: Container(
        width: MediaQuery.of(context).size.width/1.5,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.teal,
              width: 1.8
            )
          )
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  child: Center(
                      child: Text(
                       // 'indian',
                        Countryname ,

                        style: TextStyle(fontSize: 18),))),
            ),
            Icon(Icons.arrow_drop_down,color: Colors.teal,)
          ],
        ),
      ),
    );
  }
  Widget number(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width/1.5,
      height: 38,
      child: Row(
        children: [
          Container(
            width: 70,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.teal,
                        width: 1.8
                    )
                )
            ),
            child: Row(
              children: [
                Text('+',style: TextStyle(fontSize: 15),),
                SizedBox(width: 20,),
                Text(Countrycode.substring(1),style: TextStyle(fontSize: 20),),
              ],
            ),

          ),
          SizedBox(width: 30,),
          Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                        color: Colors.teal,
                        width: 1.8
                    )
                )
            ),

            width: MediaQuery.of(context).size.width/1.5-100,
            child: TextFormField(
              controller: _controller,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(8),
                hintText: "Phone Number",
              ),
            ),
          ),
        ],
      ),
    );
  }
   setCountryData(countrymodel countryModel){
     setState(() {
       Countryname = countryModel.name;
       Countrycode = countryModel.code;
     //  phonenumber=countryModel.phonenumber;

     });
     Navigator.pop(context);
   }
  Future<void> _showMyDialog(bool isMobileNum) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
         // title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: isMobileNum?Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                // Text('Please verified your phone number',
                //   style: TextStyle(fontSize: 15),),

              Text("We will verify your phone number",style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Text( Countrycode +" "+ _controller.text,style: TextStyle(fontSize: 15),),
              //Text(phonenumber),
              SizedBox(height: 10,),
              Text("IS this OK or write you edite number",style: TextStyle(fontSize: 15),),

              ],
            ):Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text("Please enter phone number",style: TextStyle(fontSize: 15),),
                SizedBox(height: 10,),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Edit'),

              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const Text('Ok'),

              onPressed: () {
                Navigator.pop(context);
                Navigator.of(context).push
                  (MaterialPageRoute(builder: (context)=>   OTPscreen(
                  Countrycode: Countrycode,
                  number: _controller.text,
                )));

              },
            ),
          ],
        );
      },
    );
  }

}
