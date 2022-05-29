import 'package:dadada/pages/sidebar/models/cartmodel.dart';
import 'package:dadada/pages/sidebar/models/catalogmodel.dart';
import 'package:dadada/pages/tabs/Setting.dart';
import 'package:dadada/pages/tabs/category.dart';
import 'package:dadada/pages/tabs/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Tabs extends StatefulWidget {
  final index;
  //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  const Tabs({Key? key,this.index=0}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late int _currentIndex;
  final List _pageList = [
    HomePage(),
    const CategoryPage(),
    const SettingPage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
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
      body: _pageList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, //配置对应的索引值选中
        onTap: (int index) {
          setState(() {
            //改变状态
            _currentIndex = index;
          });
        },
        iconSize: 36.0, //icon的大小
        fixedColor: Colors.red, //选中的颜色
        type: BottomNavigationBarType.fixed, //配置底部tabs可以有多个按钮
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "求实"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置")
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
                  image: NetworkImage(
                      "https://www.yulumi.cn/gl/uploads/allimg/201128/161H4HI-2.jpg"),
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
