
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_app3/util/ToastUtil.dart';
import 'package:flutter_app3/net/model/bbq_person_model.dart';
import 'dart:convert';

import 'package:flutter_app3/net/model/student_model.dart';

class LoadJson{

  static Future<String> _loadAStudentAsset() async {
    return await rootBundle.loadString('assets/student');
  }

  static Future loadStudent() async {
    String jsonString = await _loadAStudentAsset();//从 assets 中加载原始 json 字符串
    final jsonResponse = json.decode(jsonString);//解码我们得到的 json 字符串
    Student student = new Student.fromJson(jsonResponse);//现在我们通过调用 Student.fromJson 方法反序列化解码的 json 响应
    print(student.studentName);
    ToastUtil.showToastLong(student.studentName);
  }



  static Future<String> _loadABbqAsset() async {
    return await rootBundle.loadString('assets/bbq');
  }

  static Future loadBbq() async {
    String jsonString = await _loadABbqAsset();//从 assets 中加载原始 json 字符串
    final jsonResponse = json.decode(jsonString);//解码我们得到的 json 字符串
    BbqPerson bbqPerson = new BbqPerson.fromJson(jsonResponse);//现在我们通过调用 Student.fromJson 方法反序列化解码的 json 响应
    ToastUtil.showToastLong("解析成功"+bbqPerson.result.toString());
  }
}


