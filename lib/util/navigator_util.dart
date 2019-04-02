import 'package:flutter/material.dart';
import 'package:flutter_app3/tablayout/tab_bar.dart';
import 'package:flutter_app3/util/ToastUtil.dart';
import 'package:flutter_app3/dialog/dialog_widget.dart';
import 'package:flutter_app3/form_pop_demo.dart';
import 'package:flutter_app3/list/grid_view.dart';
import 'package:flutter_app3/list/list_view.dart';
import 'package:flutter_app3/list/list_view_with_data.dart';
import 'package:flutter_app3/list/random_list_page.dart';
import 'package:flutter_app3/router_demo/second_page.dart';
import 'package:flutter_app3/slide/slide_drawer.dart';

///定义一个类  处理动态路由跳转
class NavigatorUtil{

  ///标准跳转
  static void goToRandomWordsPage(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new RandomWordsPage();
    }));
  }

  ///悬浮控件 以及弹窗
  static void goToOverLayPage(BuildContext context){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new OverLayPage();
    }));
  }

  ///带参数跳转
  static void goToGridPage(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new GridPage(title: title);
    }));
  }

  ///list view
  static void goToListPage(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new ListPage(title: title,);
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
      return new MyHomePage();
    }));
  }

  ///list view with data
  static void goToListPageWithData(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new ListPageWithData(title: title,);
    }));
  }

  ///仿qq侧滑栏
  static void goToSlideDrawer(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new SlidePage(title: title,);
    }));
  }

  ///tabLayout
  static void goToTabLayoutPage(BuildContext context, String title){
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new TabLayoutPage();
    }));
  }

}