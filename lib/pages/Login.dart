import 'package:flutter/material.dart';
import 'package:flutter_dynamicbookapwithmodel/models/login.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/AppBar.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/Drawer.dart';
class Login extends StatelessWidget {
  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();
List<Loginmodel> loginlist=[];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
              child: AppBarrr()) ),
      drawer: Drawerr(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20.0,top: 20.0,right: 20.0),
          child: Column(
            children: [
              SizedBox(height: 50.0,),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff0B486B),Color(0xffF56217)]),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: TextField(
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Enter Email ID",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),

                ),
              ),
              SizedBox(height: 20.0,),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff0B486B),Color(0xffF56217)]),
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: TextField(
                  controller: pass,

                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                      )
                  ),

                ),
              ),
              SizedBox(height: 40.0,),
              GestureDetector(
                onTap: (){
                  var a=email.text;
                  var b=pass.text;
                  loginlist.add(Loginmodel(email: a,password: b));
                  print(Loginmodel(email: a,password: b));
                },
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff0B486B),Color(0xffF56217)]),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue,
                  ),
                  height: 50.0,
                  width: 100,
                  child: Center(
                      child: Text("LOGIN")),
                ),
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}

