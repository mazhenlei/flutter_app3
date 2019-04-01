import 'package:flutter/material.dart';
import 'package:flutter_app3/ToastUtil.dart';
import 'package:flutter_app3/dialog/dialog_widget.dart';
import 'package:flutter_app3/form_pop_demo.dart';
import 'package:flutter_app3/list/grid_view.dart';
import 'package:flutter_app3/list/list_view.dart';
import 'package:flutter_app3/list/list_view_with_data.dart';
import 'package:flutter_app3/list/random_list_screen.dart';
import 'package:flutter_app3/router_demo/second_page.dart';

///定义一个类  动态路由跳转
class NavigatorUtil{

  ///标准跳转
  static void goToRandomWordsPage(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new RandomWordsPage(); //构造传参
    }));
  }

  ///悬浮控件 以及弹窗
  static void goToOverLayPage(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new OverLayPage(); //构造传参
    }));
  }

  ///带参数跳转
  static void goToGridPage(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new GridPage(title: title); //构造传参
    }));
  }

  ///list view
  static void goToListPage(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new ListPage(title: title,); //构造传参
    }));
  }

  ///带返回值跳转
  static void goToSecondPage(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new SecondPage(title: '路由是个好东西，要进一步封装');
    })).then((value) {
      ToastUtil.showToastLong(value);
    });
  }

  ///去首页
  static void goToHomePage(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new MyHomePage(); //构造传参
    }));
  }

  ///list view with data
  static void goToListPageWithData(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new ListPageWithData(title: title,); //构造传参
    }));
  }

}