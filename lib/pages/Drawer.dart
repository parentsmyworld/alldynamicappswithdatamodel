

import 'package:flutter/material.dart';
import 'package:flutter_dynamicbookapwithmodel/main.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/Login.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/Product%20App.dart';

class Drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            //padding is set as 0 to make the profile pic attached along the left side
            padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Color(0xff0B486B),Color(0xffF56217)])
            ),

      child:
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 60,
//                color: Colors.red,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage("https://www.insidesport.co/wp-content/uploads/2020/06/1-9-5.jpg"),
                    ),
SizedBox(width: 10,),
Container(
  padding: EdgeInsets.only(top: 10),
  child:   Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 10,),
      Text("Manjjjjj"),
      Text("klmklvlkxcmvlcxkmvlcxkm"),

    ],
  ),
)
                  ],
                ),
              ),
            )
            
            
            
//            to make the alignment of the text inside  header image
//            Align(
//                alignment: Alignment.center,
//                child: Text("Menu")),



//            to decorate with the gradient color
//            decoration: BoxDecoration(
//              gradient: LinearGradient(
//                  begin: Alignment.centerLeft,
//                  end: Alignment.centerRight,
//                  colors: [Color(0xff0B486B),Color(0xffF56217)])
//            ),

//              to display an image in drawerheader
//              decoration: BoxDecoration(
//                  image: DecorationImage(
//                      fit: BoxFit.fill,
//                      image:NetworkImage("https://blog.altair.com/wp-content/uploads/2019/01/MainImage.jpg")))

            ),
//            to display usnme email and dp in  drawer header
//            UserAccountsDrawerHeader(
//              currentAccountPicture: CircleAvatar(
//                  backgroundColor: Colors.black,
//                  child: Text("M")),
//                accountName: Text("ghg"), accountEmail: Text("jhvj")),

          GestureDetector(
            onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(MyApp())));},
            child: ListTile(
             leading: CircleAvatar(
               backgroundImage:NetworkImage("https://cdn.elearningindustry.com/wp-content/uploads/2016/05/top-10-books-every-college-student-read-1024x640.jpeg")
    ,
               ),
             title: Text("Books"),
         ),
          ),
          GestureDetector(
            onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(ProdProd())));},
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQqpVVoxUtt96IBTq2_1Wv3nTvuCHAAJWEURQ&usqp=CAU")
                ,
              ),
              title: Text("Products"),
            ),
          ),
          GestureDetector(
            onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>(Login())));},
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQH9j3cqjtOT6pPDrjiSkXXi3eB-Gwyzaxs7w&usqp=CAU")
                ,
              ),
              title: Text("Login"),
            ),
          ),

        ]
      ),
    );
  }
}
