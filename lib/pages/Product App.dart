import 'package:flutter/material.dart';
import 'package:flutter_dynamicbookapwithmodel/models/Product.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/AppBar.dart';
import 'package:flutter_dynamicbookapwithmodel/pages/Drawer.dart';

class ProdProd extends StatefulWidget {
  @override
  _ProdProdState createState() => _ProdProdState();
}

class _ProdProdState extends State<ProdProd> {
  TextEditingController name=TextEditingController();
  TextEditingController categ=TextEditingController();
  TextEditingController price=TextEditingController();
  List<ProductModel> productlist=[];
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
        body: SizedBox.expand(
          child: Container(
            padding: EdgeInsets.only(left: 20.0,top: 20.0,right: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text("Products",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xff0B486B),Color(0xffF56217)]),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child:   TextField(

                      controller: name,

                      decoration: InputDecoration(

                          hintText: "Enter Product Name",

                          prefixIcon: Icon(Icons.keyboard),

                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10)

                          )

                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xff0B486B),Color(0xffF56217)]),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: TextField(
                      controller: categ,
                      decoration: InputDecoration(
                          hintText: "Enter Category",

                          prefixIcon: Icon(Icons.keyboard),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xff0B486B),Color(0xffF56217)]),
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: TextField(

                      controller: price,

                      decoration: InputDecoration(

                          hintText: "Enter Price",

                          prefixIcon: Icon(Icons.keyboard),

                          border: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(10)

                          )

                      ),

                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        var a=name.text;
                        var b=categ.text;
                        var c=price.text;
                        setState(() {
                          productlist.add(ProductModel(Prodname: a,Catego: b,Price:int.parse(c)));
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xff0B486B),Color(0xffF56217)]),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        height: 50,
                        width: 100,

                        child: Center(child: Text("ADD")),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: productlist.length==null?0:productlist.length,
                      itemBuilder: (context,index){
                        return Card(
                          color: Color(0xffEECDA3),
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [Color(0xff0B486B),Color(0xffF56217)]),
                            ),
                            child: ListTile(
                              leading: Icon(Icons.library_books),
                              trailing: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      productlist.removeAt(index);
                                    });
                                  },
                                  child: Icon(Icons.delete)),
                              title: Text("Product :"+productlist[index].Prodname,style: TextStyle(
                                  color: Colors.black
                              ),),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Category :"+productlist[index].Catego,style: TextStyle(
                                      color: Colors.green
                                  ),),
                                  Text("Price :${productlist[index].Price}",style: TextStyle(
                                      color: Colors.green
                                  )),

                                ],
                              ),

                            ),
                          ),
                        );
                      })

                ],
              ),
            ),
          ),
        ),
      ),

    );

  }
}
