import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/AppBar.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/Drawer.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/first.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
            child: SafeArea(
                child: AppBarrr()), ),
        drawer: Drawerr(),
        body: BookBook(),
      ),
    );
  }
}
