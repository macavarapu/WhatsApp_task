import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text('singam',
            style: Theme
                .of(context)
                .
            textTheme
                .
            headline3
                ?.
            copyWith(color: Colors.white),),
          Text('Calling', style: TextStyle(color: Colors.white60),),
          VerticalDivider(
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: Container(
              height: 190,
              width: 190,
              // height: MediaQuery.of(context).size.width,
              // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Colors.white.withOpacity(0.2),
                      Colors.white.withOpacity(0.5),
                    ],
                    stops: [0.1, 1],
                  )
              ),
              child: Icon(Icons.person, size: 50,

              ),

            ),

          ),
          Spacer(),

          // SizedBox(
          //   width:120,
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 20),
          //     child:IconButton(
          //         onPressed: (){},
          //         icon: Icon(Icons.mic,
          //         ),
          //
          //     ),
          //
          //   ),
          //
          // ),
          // Text('SS'),

        ],
      ),
    );
  }
}
