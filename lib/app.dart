import 'package:flutter/material.dart';
import 'package:fultter_liuying/page/homepage.dart';
import 'package:fultter_liuying/page/searchpage.dart';
import 'package:fultter_liuying/page/knowpage.dart';
import 'package:fultter_liuying/page/publiccpage.dart';
import 'package:fultter_liuying/page/navigationpage.dart';
import 'package:fultter_liuying/page/projectpage.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => new _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  final appBarTitles = ['玩Android', '体系', '公众号', '导航', '项目'];
  int elevation = 4;

  var pages = <Widget>[
    HomePage(),
    KnowledgePage(),
    PubliccPage(),
    NavigationPage(),
    ProjectPage()
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: new Text(appBarTitles[_selectedIndex]),
          bottom: null,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.of(context)
                    .push(new MaterialPageRoute(builder: (context) {
                  return new SearchPage();
                }));
              },
            )
          ],
        ),
        body: new IndexedStack(
          children: pages,
          index: _selectedIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), title: Text('体系')),
            BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('公众号')),
            BottomNavigationBarItem(
                icon: Icon(Icons.navigation), title: Text('导航')),
            BottomNavigationBarItem(icon: Icon(Icons.book), title: Text('项目'))
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
                title: new Text("退出提示"),
                content: new Text("确定退出应用吗？"),
                actions: <Widget>[
                  new FlatButton(
                      onPressed: () => Navigator.of(context).pop(false),
                      child: new Text("再看一会")),
                  new FlatButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: new Text("退出"))
                ],
              ),
        ) ??
        false;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 2 || index == 4) {
        elevation = 0;
      } else {
        elevation = 4;
      }
    });
  }
}
