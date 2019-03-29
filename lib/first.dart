import 'package:flutter/material.dart';
import 'package:flutter_app3/Image_pick/ImagePickerWidget.dart';
import 'package:flutter_app3/snackbar/snackbar_demo.dart';

import 'package:fluttertoast/fluttertoast.dart';

class SampleAppPage extends StatefulWidget {
//  SampleAppPage({Key key}) : super(key: key);

  final String title;

  SampleAppPage({this.title});

  @override
  _SampleAppPageState createState() => new _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Default placeholder text
//  String textToShow = "I Like Flutter";
  bool toggle = true;

  _getToggleChild() {
    if (toggle) {
      return new Text('Toggle One');
    } else {
      return new MaterialButton(
          onPressed: _goToSnackBar, child: const Text('Toggle Two'));
    }
  }

  void _goToSnackBar() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new SnackBarPage();
    }));
  }

  void _goToImagePick() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (_) {
      return new ImagePickerWidget();
    }));
  }

  void _updateText() {
    setState(() {
      // update the text
      toggle = !toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Sample App",
          style: Theme.of(context).primaryTextTheme.title,
        ),
//        leading: new IconButton(
//          icon: new Icon(Icons.menu),
//          tooltip: 'ddd',
//          onPressed: _goToSnackBar,
//        ),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "search",
                );
                _goToImagePick();
              })
        ],
      ),
      body: new Center(
        child: _getToggleChild(),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Fluttertoast.showToast(
            msg: "This is Center Short Toast",
          );
          _updateText();
        },
        tooltip: 'Update Text',
        child: new Icon(Icons.update),
      ),
    );
  }
}
