import 'package:flutter/material.dart';
import '../../res/listdata.dart';


class HomePage extends StatelessWidget {

  const HomePage({Key? key}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(child: Text("LMJ's Daily Life"), flex: 4,),
            Expanded(
              child: InkWell(
                child: const CircleAvatar(radius: 18.0,
                  backgroundImage: AssetImage('images/ys8.png'),),
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
              ),
            )
          ],),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
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
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(
                '我的日常',
                style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: AssetImage(
                      "images/sidebar_bg.jpg"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            ListTile(
              title: const Text('学习'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context,'/study');
              },
            ),
            ListTile(
              title: const Text('科研'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context,'/research');
              },
            ),
            ListTile(
              title: const Text('生活'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context,'/life');
              },
            ),
            ListTile(
              title: const Text('休闲'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context,'/leisure');
              },
            ),
            ListTile(
              title: const Text('购物'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context,'/mylogin');
              },
            )
          ],
        ),
      ),
    );
  }
}


