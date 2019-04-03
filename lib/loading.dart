import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:fultter_liuying/app.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingState createState() => new _LoadingState();
}

class _LoadingState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    //加载页面停顿三秒
    new Future.delayed(Duration(seconds: 2), () {
      _getHasSkip();
    });
  }

  void _getHasSkip() async {
    //是否有做过引导
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool hasSkip = preferences.get("hasSkip");
    if (hasSkip == null || !hasSkip) {
      Navigator.of(context).pushReplacementNamed("splash");
    } else {
      Navigator.of(context).pushAndRemoveUntil(
          new MaterialPageRoute(builder: (context) => App()),
          (route) => route == null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Image.asset("images/loading.png", fit: BoxFit.fill),
//      child: Stack(
//        children: <Widget>[
//          Image.asset(
//            "images/loading.png",
//            fit: BoxFit.fill,
//          )
//        ],
//      ),
    );
  }
}
