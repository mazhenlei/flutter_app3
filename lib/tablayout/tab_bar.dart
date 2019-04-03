import 'package:flutter/material.dart';
import 'package:flutter_app3/image/image.dart';
import 'package:flutter_app3/image/image_load.dart';
import 'package:flutter_app3/tablayout/TabPage.dart';

class TabLayoutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabPageState();
  }
}

class TabPageState extends State<TabLayoutPage>
    with SingleTickerProviderStateMixin {

  TabController _tabController; //控制器

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this); //自定义控制器 长度3
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
//          backgroundColor: Colors.blue,
//          title: Text("TabLayout"),
          title: TabBar(
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.red,
              //指示器颜色
              controller: _tabController,
              tabs: <Widget>[
                Tab(
                  text: "tab1",
                  icon: Icon(Icons.assignment_ind),
                ),
                Tab(
                  text: "tab2",
                  icon: Icon(Icons.assignment_late),
                ),
                Tab(
                  text: "tab3",
                  icon: Icon(Icons.assignment_return),
                ),
              ]
          )
      ),
      body: TabBarView(
              controller: _tabController,
              children: <Widget>[ImageViewWidget(), TabPage(), ImagePage()
              ]
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
