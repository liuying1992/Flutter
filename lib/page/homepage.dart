import 'package:flutter/material.dart';
import 'package:fultter_liuying/base/base_widget.dart';

class HomePage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> getState() {
    return _HomePageState();
  }
}

class _HomePageState extends BaseWidgetState<HomePage> {
  @override
  void initState() {
    super.initState();
    setAppBarVisible(false); //设置展示标题
    showEmpty();
  }

  @override
  AppBar getAppBar() {
    return AppBar(
      title: new Text("标题"),
    );
  }

  @override
  Widget getContentWidget(BuildContext context) {
    return Scaffold(
      body: new Text("文本"),
    );
  }
}
