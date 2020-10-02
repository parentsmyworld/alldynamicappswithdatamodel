import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarrr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      centerTitle: true,
      flexibleSpace: Container(
        child:
        Center(child: Text("Dynamic Apps With Model",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff0B486B),Color(0xffF56217)])
        ),
      ),
    );
  }
}
