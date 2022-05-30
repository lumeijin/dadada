
import 'package:dadada/pages/customed_widget/gridview_layout.dart';
import 'package:flutter/material.dart';

class ResearchPage extends StatelessWidget {
  const ResearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("科研区"),
      ),
      body:const GridViewLayout(),
    );
  }
}
