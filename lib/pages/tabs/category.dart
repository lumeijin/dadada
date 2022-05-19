import 'package:flutter/material.dart';

import '../../layout/expanded_layout.dart';

class CategoryPage extends StatefulWidget {
   //Flutter2.2.0之后需要注意把Key改为可空类型  {Key? key} 表示Key为可空类型
  const CategoryPage({Key? key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return const ExpandedLayout();
  }
}