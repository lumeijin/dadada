import 'package:flutter/material.dart';
import '../../res/listdata.dart';


class HomePage extends StatelessWidget {

  HomePage({Key? key}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: const [
            SizedBox(width: 15.0,),
            Text("课程表",style: TextStyle(
            fontSize: 20,
          ),
          ),
            SizedBox(width: 20.0,)
          ]
        ),
        Container(
          height: 60,
          margin:const EdgeInsets.all(10.0),
          child: const Text("今天没有课程哟~",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black12
              )
          ),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(6.0),
          ),
        ),
        ),
        Row(
            children: const [
              SizedBox(width: 15.0,),
              Text("考试表",style: TextStyle(
                fontSize: 20,
              ),
              ),
              SizedBox(width: 20.0,)
            ]
        ),
        Container(
          height: 60,
          margin:const EdgeInsets.all(10.0),
          child: const Text("今天没有考试哟~",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black12
              )
          ),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(6.0),
            ),
          ),
        ),
        Row(
            children: const [
              SizedBox(width: 15.0,),
              Text("我的收藏",style: TextStyle(
                fontSize: 20,
              ),
              ),
              SizedBox(width: 20.0,)
            ]
        ),
        Container(
          height: 60,
          margin:const EdgeInsets.all(10.0),
          child: const Text("暂时没有收藏哟~",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black12
              )
          ),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(6.0),
            ),
          ),
        ),
      ],
    );
  }
}


