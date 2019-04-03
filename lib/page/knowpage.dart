import 'package:flutter/material.dart';
import 'package:fultter_liuying/base/base_widget.dart';

class KnowledgePage extends BaseWidget {
  @override
  BaseWidgetState<BaseWidget> getState() {
    // TODO: implement getState
    return _KnowledgePageState();
  }
}

class _KnowledgePageState extends BaseWidgetState<KnowledgePage> {
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
