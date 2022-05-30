import 'package:dadada/pages/tabs/Setting.dart';
import 'package:dadada/pages/tabs/category.dart';
import 'package:dadada/pages/tabs/homepage.dart';
import 'package:flutter/material.dart';


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
    const HomePage(),
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
    );
  }
}
