import 'package:flutter/material.dart';
import 'package:fultter_liuying/base/base_widget.dart';

class ProjectPage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> getState() {
    return _ProjectPageState();
  }
}

class _ProjectPageState extends BaseWidgetState<ProjectPage> {
  @override
  void initState() {
    super.initState();
    setAppBarVisible(false); //设置展示标题
    showEmpty(); //暂无数据
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
