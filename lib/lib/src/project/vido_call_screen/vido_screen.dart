import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset( 'assets/image/ntr.png',
          fit: BoxFit.cover,
        ),
        DecoratedBox(decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3))),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('singam',
                  style: Theme.of(context).
                  textTheme.
                  headline3?.
                  copyWith(color: Colors.white),),
                VerticalDivider(

                ),
                Text('Incoming0:10pm'.toUpperCase(),
                  style: TextStyle(color: Colors.white60),),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.mic,size: 30,color: Colors.green,)
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 30,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.call_end,size: 30,color: Colors.white,)
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.call_end,size: 30,color: Colors.red,)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }

}
// class RoundedButton extends StatelessWidget {
//   const RoundedButton({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child:  CircleAvatar(
//         backgroundColor: Colors.red,
//         radius: 30,
//         child: IconButton(
//             onPressed: (){},
//             icon: Icon(Icons.call_end,size: 30,color: Colors.white,)
//         ),
//       ),
//     );
//   }
// }

