import 'package:flutter/material.dart';
import 'package:flutter_app3/ToastUtil.dart';
import 'package:flutter_app3/dialog/overlay_util.dart';
import 'package:flutter_app3/navigator_util.dart';
import 'package:flutter_app3/net/bbq_person_info.dart';
import 'package:flutter_app3/net/http_util.dart';
import 'package:flutter_app3/net/student_services.dart';

class MyPagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础学习'),
        leading: new IconButton(
          icon: new Icon(Icons.menu),//todo 图片可以替换
          tooltip: 'ddd',
          onPressed: (){
          },
        ),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.account_box), onPressed: (){
            NavigatorUtil.goToSecondPage(context,"路由是个好东西，要进一步封装");
          }),
        ],
        backgroundColor: Colors.yellow,
      ),
      body: MyPageWidget(),
    );
  }
}


class MyPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyState();
  }
}

class MyState extends State<MyPageWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build  Column竖着的 Align  居中就套一层Align--- A widget that aligns its child within itself and optionally sizes itself based on the child's size.
    return new Column(
//      mainAxisSize: MainAxisSize.max,
//      mainAxisAlignment: MainAxisAlignment.center, //内部控件居中
        crossAxisAlignment: CrossAxisAlignment.start,//内部空间左对齐
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                NavigatorUtil.goToListPage(context,"ListView");
              },
              child: new Text("ListView"),
            ),
            new RaisedButton(
              onPressed: () {
                NavigatorUtil.goToRandomWordsPage(context);
              },
              child: new Text("RandomWords"),
            ),
            new RaisedButton(
              onPressed: () {
                NavigatorUtil.goToGridPage(context,"GridView");
              },
              child: new Text("GridView"),
            ),
            new RaisedButton(
              onPressed: () {
                NavigatorUtil.goToOverLayPage(context);
              },
              child: new Text("showDialog"),
            ),
            new RaisedButton(
              onPressed: () {
                NavigatorUtil.goToHomePage(context);
              },
              child: new Text("HomePage"),
            ),
            new RaisedButton(
              onPressed: () {
                HttpUse.httpClient().then((response) {
                  ToastUtil.showToastLong("解析成功"+response.result.toString());
                });
              },
              child: new Text("httpclient"),
            ),
            new RaisedButton(
              onPressed: () {
                LoadJson.loadStudent();
              },
              child: new Text("loadStudent"),
            ),
            new RaisedButton(
              onPressed: () {
                LoadJson.loadBbq();
              },
              child: new Text("loadBbq"),
            ),
            new RaisedButton(
              onPressed: () {
                NavigatorUtil.goToListPageWithData(context,"网络数据的listview");
              },
              child: new Text("网络数据的listview"),
            ),
          ],
        );
  }
}
