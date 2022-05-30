import 'package:dadada/pages/customed_widget/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

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

class XiaoWu extends StatelessWidget{
  const XiaoWu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class BaiTan extends StatelessWidget{
  const BaiTan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class JiaoWang extends StatelessWidget{
  const JiaoWang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class XueXi extends StatelessWidget{
  const XueXi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ReSou extends StatelessWidget{
  const ReSou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Text("我是热搜");
  }
}
class QuanBu extends StatefulWidget {
  const QuanBu({Key? key}) : super(key: key);

  @override
  State<QuanBu> createState() => _QuanBuState();
}

class _QuanBuState extends State<QuanBu> {
  int _dropdownValue = 1;
  List<Map> imageList = [
    {
      "url":"images/轮播1.jpg"
    },
    {
      "url":"images/轮播2.jpg"
    },
    {
      "url":"images/轮播3.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 4,right: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:   [
              const SizedBox(width: 4.0,),
              const Text("🐭🐭晚上好呀~"),
              const Spacer(),
              DropdownButton(
                icon: const Icon(Icons.arrow_drop_down),
                iconSize: 40,
                iconEnabledColor: Colors.green.withOpacity(0.7),
                hint: const Text('排序方式',style: TextStyle(fontSize: 16),),
                value: _dropdownValue,
                items: const [
                  DropdownMenuItem(child: Text('默认'), value: 1),
                  DropdownMenuItem(child: Text('最新'), value: 2),
                ],
                onChanged: (value) {
                  _dropdownValue=int.parse(value.toString());
                  setState(() {
                    // _dropdownValue=value;
                  });
                },
              ),
              const SizedBox(width: 4.0,),
            ],

          ),
        ),
        const SizedBox(height: 10,),
        //轮播图
        Expanded(
          child: ListView(
            shrinkWrap:true,
            scrollDirection:Axis.vertical ,
            children: [
              SizedBox(
                width: double.infinity,
                height: 100.0,
                child: Swiper(
                  itemBuilder: (BuildContext context,int index){
                    // 配置图片地址
                    return Image.asset(imageList[index]["url"],fit: BoxFit.contain,);
                  },
                  // 配置图片数量
                  itemCount: imageList.length ,
                  // 底部分页器
                  pagination: const SwiperPagination(),
                  // 左右箭头
                  control: const SwiperControl(),
                  // 无限循环
                  loop: true,
                  // 自动轮播
                  autoplay: true,
                ),
              ),
              PostWidget(
                  title: "标题1",
                  label: "羞羞",
                  detail: "我一天不羞羞就浑身难受,我一天不羞羞就浑身难受,我一天不羞羞就浑身难受,我一天不羞羞就浑身难受,"
              ),
              PostWidget(
                  title: "标题2",
                  label: "涩涩",
                  detail: "我一天不涩涩就浑身难受,我一天不涩涩就浑身难受,我一天不涩涩就浑身难受,我一天不涩涩就浑身难受,"
              ),
              PostWidget(
                  title: "标题3",
                  label: "开车",
                  detail: "我一天不开车就浑身难受,我一天不开车就浑身难受,我一天不开车就浑身难受,我一天不开车就浑身难受,"
              ),
              PostWidget(
                  title: "标题4",
                  label: "污污",
                  detail: "我一天不污污就浑身难受,我一天不污污就浑身难受,我一天不污污就浑身难受,我一天不污污就浑身难受,"
              ),
              PostWidget(
                  title: "标题5",
                  label: "贴贴",
                  detail: "我一天不贴贴就浑身难受,我一天不贴贴就浑身难受,我一天不贴贴就浑身难受,我一天不贴贴就浑身难受,"
              ),
            ],
          ),
        )
      ],
    );
  }
}
