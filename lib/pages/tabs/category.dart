import 'package:flutter/material.dart';

import '../tabviews/baitan.dart';
import '../tabviews/jiaowang.dart';
import '../tabviews/quanbu.dart';
import '../tabviews/resou.dart';
import '../tabviews/xiaowu.dart';
import '../tabviews/xuexi.dart';

class CategoryPage extends StatefulWidget {
   //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {

  final List<Widget> _tabList = [
    const Text("全部"),
    const Text("热搜"),
    const Text("学习"),
    const Text("交往"),
    const Text("摆摊"),
    const Text("校务"),
  ];
  final List<Widget> _tabViewList = [
    const QuanBu(),
    const ReSou(),
    const XueXi(),
    const JiaoWang(),
    const BaiTan(),
    const XiaoWu(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabList.length,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.message),
          title: Row(
            children:  [
              Expanded(
                child: Container(
                  margin:const EdgeInsets.only(top: 8.0),
                  height: 32.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.grey, width: 1.0
                      ),
                      borderRadius: const BorderRadius.all( Radius.circular(8.0) )
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "搜索发现",
                      border: InputBorder.none,
                    ),

                    showCursor: true,
                  ),
                ),
                flex: 8,
              ),
              const Expanded(
                child: Icon(Icons.add),
                flex: 1,
              ),
            ],
          ),
          bottom:  TabBar(
            tabs: _tabList,
          ),
        ),
        body: TabBarView(
          children: _tabViewList,
        )
      ),
    );
  }
}

