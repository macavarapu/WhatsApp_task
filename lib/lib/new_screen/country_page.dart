import 'package:flutter/material.dart';

import 'country_model.dart';

class Countrypage extends StatefulWidget {
   Countrypage({Key? key,
     required this.setCountryData
   }) : super(key: key);
   final Function setCountryData ;
  List<countrymodel> countries=[
    countrymodel(name: "India", code: "+91", flage: "IN", phonenumber: ''),
    countrymodel(name: "Pakistn", code: "+92", flage: "Pn", phonenumber: ''),
    countrymodel(name: "United states", code: "+1", flage: "Us", phonenumber: ''),
    countrymodel(name: "South Africa", code: "+27", flage: "ZA", phonenumber: ''),
    countrymodel(name: "Itaiy", code: "+39", flage: "IT", phonenumber: ''),
    countrymodel(name: "AFghanistan", code: "+93", flage: "AF", phonenumber: ''),
    countrymodel(name: "India", code: "+91", flage: "IN", phonenumber: ''),
    countrymodel(name: "Pakistn", code: "+92", flage: "Pn", phonenumber: ''),
    countrymodel(name: "United states", code: "+1", flage: "Us", phonenumber: ''),
    countrymodel(name: "South Africa", code: "+27", flage: "ZA", phonenumber: ''),
    countrymodel(name: "Itaiy", code: "+39", flage: "IT", phonenumber: ''),
    countrymodel(name: "AFghanistan", code: "+93", flage: "AF", phonenumber: ''),

  ];

  @override
  _CountrypageState createState() => _CountrypageState();
}

class _CountrypageState extends State<Countrypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
            child: Icon(Icons.arrow_back,color: Colors.teal,)),
        title: Text('Choose a country',
          style: TextStyle(
            fontWeight:FontWeight.w700,
            color: Colors.teal,
            fontSize: 20,
            wordSpacing: 1,
          ),
        ),
        actions: [
          Icon(Icons.search,color: Colors.teal,),
        ],
      ),
      body: ListView.builder(
       itemCount: widget.countries.length,
          itemBuilder: (context, index) =>card(widget.countries[index]) ),
    );
  }
  Widget card(countrymodel country){
    
    return InkWell(
      onTap: (){
      widget.setCountryData(country);
      },
      child: Card(

        margin: EdgeInsets.all(0.15),
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Row(
            children: [
              Text(country.flage),
              SizedBox(width: 15,),
              Text(country.name),
              Expanded(
                child: Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                          country.code),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
