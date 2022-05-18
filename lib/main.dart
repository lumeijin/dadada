import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'LMJ\'s Daily Life'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: GridViewLayout(),
      // This trailing comma makes auto-formatting nicer for build methods.
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
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('科研'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('生活'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('业余'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}

class ListViewLayout extends StatelessWidget {
  var list = [];

  ListViewLayout({Key? key}) : super(key: key) {
    for (var i = 0; i < 18; i++) {
      list.add("元神${i + 1}");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                //头像半径
                radius: 60,
                //头像图片 -> NetworkImage网络图片，AssetImage项目资源包图片, FileImage本地存储图片
                backgroundImage: AssetImage(
                  'images/ys${index + 1}.png',
                ),
              ),
              title: Text(
                "元神${index + 1}",
                style: const TextStyle(fontSize: 28),
              ),
              subtitle: Text("详细说明${index + 1}"),
            );
          }),
    );
  }
}

class GridViewLayout extends StatelessWidget {
  List<Widget> _getDataList() {
    var tempList = listData.map((value) {
      return Container(
          child: Column(
            children: <Widget>[
              Image.asset(value["imageUrl"]),
              const SizedBox(height: 12),
              Text(value["title"],
                  textAlign: TextAlign.center, style: const TextStyle(fontSize: 20.0)),
            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color.fromRGBO(230, 230, 230, 0.9), width: 1.0)));
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        padding: EdgeInsets.all(20),
    crossAxisCount: 2,
    crossAxisSpacing: 20,
    mainAxisSpacing: 40, // childAspectRatio:0.7,
    children: _getDataList(),
    );
    // throw UnimplementedError();
  }
}
