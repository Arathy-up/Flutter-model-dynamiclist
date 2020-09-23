import 'package:flutter/material.dart';
import 'package:flutter_dynamic_model/Dynamicmodel.dart';

void main()=>runApp(MyDynamicApp());
class MyDynamicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic model"),
        ),
        body: Dynamicmodel(),
      ),
    );
  }
}
