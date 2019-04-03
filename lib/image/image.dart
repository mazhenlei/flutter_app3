

import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ImageState();
  }

}

class ImageState extends State<ImagePage>{

  double radius = 10.0;

  @override
  void initState() {
    super.initState();
    //改变属性展示动画效果 先变大再变小
    Future<Duration>.delayed(Duration(milliseconds: 2 * 1000), () {
      setState(() {
        radius = 20.0;
      });
      return Duration(milliseconds: 210);
    }).then((Duration d) {
      Future<Duration>.delayed(d, () {
        setState(() {
          radius = 40.0;
        });
        return Duration(milliseconds: 210);
      }).then((Duration d) {
        Future<Duration>.delayed(d, () {
          setState(() {
            radius = 30.0;
          });
        });
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: Text("图片处理"),
        ),

       body: ListView(
         children: <Widget>[
           CircleAvatar(//显示圆头像
               child: Text("头像"),
//               backgroundImage: AssetImage("images/dart.png"),
               backgroundColor: Colors.red,
               radius: radius,//图片大小
           )
         ],

       ),
    );
  }

}