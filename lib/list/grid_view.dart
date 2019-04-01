import 'package:flutter/material.dart';

//和listiew类似有两种方式实现
class GridPage extends StatelessWidget {

  final String title;

  GridPage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
 //       backgroundColor: Colors.blueGrey, //设置body的背景色
        body: new GridWidget());
  }
}

class GridWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GridState();
  }
}

class GridState extends State<GridWidget> {

  final List<ListItem> listData = []; //装实体
  List<Widget> widgets = []; //装widget

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 20; i++) {
      listData.add(new ListItem("我是测试标题$i", Icons.cake));
    }

    for (int j = 0; j < 20; j++) {
      widgets.add(ListItemWidget(listData[j]));
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new GridView(
//      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//          crossAxisCount: 2, //每行2个
//          mainAxisSpacing: 10.0, //主轴(竖直)方向间距
//          crossAxisSpacing: 10.0, //纵轴(水平)方向间距
//          childAspectRatio: 1.0 //纵轴缩放比例
//          ),
//      children: widgets,
//    );

   // builder方式
   return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, //每行2个
          mainAxisSpacing: 10.0, //主轴(竖直)方向间距
          crossAxisSpacing: 10.0, //纵轴(水平)方向间距
          childAspectRatio: 1.0 //纵轴缩放比例
      ),
      itemCount: listData.length,
      itemBuilder: (BuildContext context, int index) {
        return ListItemWidget(listData[index]);
      },
    );
  }
}

//定义一个实体类
class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}

//创建item 布局
class ListItemWidget extends StatelessWidget {
  final ListItem listItem;

  ListItemWidget(this.listItem);//构造传参

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new Container(
        color: Colors.green,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              listItem.iconData,
              size: 50.0,
              color: Colors.white,
            ),
            new Text(
              listItem.title,
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      onTap: () {
        Scaffold.of(context).showSnackBar(new SnackBar(
          content: new Text(listItem.title),
        ));
      },
    );
  }
}
