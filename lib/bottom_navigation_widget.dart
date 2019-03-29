import 'package:flutter/material.dart';
import 'package:flutter_app3/pages/email_screen.dart';
import 'package:flutter_app3/pages/home_screen.dart';
import 'package:flutter_app3/pages/pages_screen.dart';
import 'package:flutter_app3/pages/random_list_screen.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.blue;//定义导航栏颜色 默认图标是灰色
  int _currentIndex = 0;
  List<Widget> list = List(); //创建组件集合
  List<Widget> list1 = []; //创建组件集合  第二种定义方式
  @override
  void initState() {
    //这种写法相当于for循环添加
    list
      ..add(HomeScreen())
      ..add(EmailScreen())
      ..add(PagesScreen())
      ..add(RandomWordsScreen());
//    list1.add(HomeScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],//装界面 切换body
      bottomNavigationBar: BottomNavigationBar(//底部导航栏
        items: [
          BottomNavigationBarItem(
//              backgroundColor: Colors.cyanAccent,  //导航栏设置背景色 必须在这里设置才有效
              icon: Icon(
                Icons.home,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'HOME',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Email',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'PAGES',
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: _bottomNavigationColor,
              ),
              title: Text(
                'Random',
                style: TextStyle(color: _bottomNavigationColor),
              )),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {//点击事件刷新 body
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
