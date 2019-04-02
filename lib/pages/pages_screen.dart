import 'package:flutter/material.dart';
import 'package:flutter_app3/animation_demo/another_parent_animation_demo.dart';
import 'package:flutter_app3/animation_demo/basic_animation_demo.dart';
import 'package:flutter_app3/animation_demo/delayed_animation_demo.dart';
import 'package:flutter_app3/animation_demo/hidden_widget_animation_demo.dart';
import 'package:flutter_app3/animation_demo/parent_animation_demo.dart';
import 'package:flutter_app3/animation_demo/test.dart';
import 'package:flutter_app3/animation_demo/transforming_animation_demo.dart';
import 'package:flutter_app3/animation_demo/value_change_animation_demo.dart';

class PagesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animal基础学习'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: AnimalListPage(),
    );
  }
}

class AnimalListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new AnimalPage();
  }
}

class AnimalPage extends State<AnimalListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build  Column竖着的 Align --- A widget that aligns its child within itself and optionally sizes itself based on the child's size.
    return new Align(
        child: new Column(
//      mainAxisSize: MainAxisSize.max,
//      mainAxisAlignment: MainAxisAlignment.center, //内部控件居中
      children: <Widget>[
        new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new HomeScreenOne(); //构造传参
            }));
          },
          child: new Text("动画1"),
        ),
        new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new HomeScreenTwo(title: "动画2",); //构造传参
            }));
          },
          child: new Text("动画2"),
        ),
        new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new HomeScreenThree(); //构造传参
            }));
          },
          child: new Text("动画3"),
        ),
        new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new HomeScreenFour(); //构造传参
            }));
          },
          child: new Text("动画4"),
        ),
        new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new HomeScreenFive(); //构造传参
            }));
          },
          child: new Text("动画5"),
        ),
        new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new HomeScreenSix(); //构造传参
            }));
          },
          child: new Text("动画6"),
        ),
        new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new HomeScreenSeven(); //构造传参
            }));
          },
          child: new Text("动画7"),
        ),

        new RaisedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
              return new SampleApp(); //构造传参
            }));
          },
          child: new Text("测试东阿虎"),
        ),
      ],
    ));
  }
}
