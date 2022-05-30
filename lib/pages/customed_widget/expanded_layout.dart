import 'package:flutter/material.dart';

class ExpandedLayout extends StatelessWidget{
  const ExpandedLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(child:Image.asset('images/pic4.jpg'),flex: 2,),
        Expanded(child:Row(
          children: [
            Expanded(child: Image.asset('images/ys1.png'),flex: 2,),
            Expanded(child:Column(
              children: [
                Expanded(child: Image.asset('images/ys2.png'),flex: 1,),
                Expanded(child: Image.asset('images/ys3.png'),flex: 1,),
              ],
            ),
              flex: 1,
            )

          ],
        ),
          flex: 2,)
      ],
    );
    // throw UnimplementedError();
  }

}