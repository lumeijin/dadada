import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CategoryPage extends StatefulWidget {
   //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
        Row(
          children:  [
            const Expanded(
              child: Icon(Icons.message),
            flex: 1,
            ),
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
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            InkWell(child: const Text("全部"),onTap: (){},),
            InkWell(child: const Text("热搜"),onTap: (){},),
            InkWell(child: const Text("学习"),onTap: (){},),
            InkWell(child: const Text("交往"),onTap: (){},),
            InkWell(child: const Text("摆摊"),onTap: (){},),
            InkWell(child: const Text("校务"),onTap: (){},),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:   [
            const Text("🐭🐭下午好呀~"),
            const SizedBox(width: 250,),
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
            )
          ],

        ),
        const SizedBox(height: 10,),
        //轮播图
        SizedBox(
          height: 100.0,
          child: Expanded(
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
        ),


      ],
    );
  }
}
