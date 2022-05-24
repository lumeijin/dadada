import 'package:flutter/material.dart';

class PostWidget extends StatefulWidget {
  String? title = "标题";
  String? label = "湖底";
  String? detail = "这是帖子的具体描述,这是帖子的具体描述,这是帖子的具体描述,这是帖子的具体描述";

  PostWidget({Key? key, this.title, this.label, this.detail}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      elevation:1.5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "${widget.title}",
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                const Text("#MP000001")
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Chip(
                labelPadding: const EdgeInsets.only(left: 2, right: 2, top: -5, bottom: -5),
                label: Text("${widget.label}",
                  style: const TextStyle(
                    fontSize: 12.0,
                  ),),
                avatar: const Icon(Icons.loyalty,size: 12.0,),
              ),
            ),
            Wrap(
              children: [
                Text(
                  "${widget.detail}",
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
            Row(
              children: [
                const Icon(Icons.mms),
                const Icon(Icons.arrow_upward),
                const Icon(Icons.arrow_downward),
                const Spacer(),
                Text(DateTime.now().toString())
              ],
            ),
          ],
        ),
      ),
    );
  }
}
