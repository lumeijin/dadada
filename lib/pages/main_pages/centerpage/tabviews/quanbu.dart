import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../../../customed_widget/post_widget.dart';

class QuanBu extends StatefulWidget {
  const QuanBu({Key? key}) : super(key: key);

  @override
  State<QuanBu> createState() => _QuanBuState();
}

class _QuanBuState extends State<QuanBu> {
  int _dropdownValue = 1; //冒泡(帖子)的排列顺序
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
  List<Map> maopaoList = [
    {
      'title': "标题1",
      'label': "羞羞",
      'detail': "我一天不羞羞就浑身难受,我一天不羞羞就浑身难受,我一天不羞羞就浑身难受,我一天不羞羞就浑身难受,"
    },
    {
      "title": "标题2",
      "label": "涩涩",
      "detail": "我一天不涩涩就浑身难受,我一天不涩涩就浑身难受,我一天不涩涩就浑身难受,我一天不涩涩就浑身难受,"
    },
    {
      "title": "标题3",
      "label": "开车",
      "detail": "我一天不开车就浑身难受,我一天不开车就浑身难受,我一天不开车就浑身难受,我一天不开车就浑身难受,"
    },
    {
      "title": "标题4",
      "label": "污污",
      "detail": "我一天不污污就浑身难受,我一天不污污就浑身难受,我一天不污污就浑身难受,我一天不污污就浑身难受,"
    },
    {
      "title": "标题5",
      "label": "贴贴",
      "detail": "我一天不贴贴就浑身难受,我一天不贴贴就浑身难受,我一天不贴贴就浑身难受,我一天不贴贴就浑身难受,"
    }

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
          child:ListView.builder(
                shrinkWrap:true,
                scrollDirection:Axis.vertical ,
                itemCount: maopaoList.length+1,
                itemBuilder: (context,index){
                  return index!=0?PostWidget(
                    title: maopaoList[index-1]["title"],
                    label: maopaoList[index-1]["label"],
                    detail: maopaoList[index-1]["detail"],
                  ):SizedBox(
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
                  );
                },
              ),
    ),
    ]
    );
  }
}