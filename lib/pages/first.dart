
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dynamicbookapwithmodel/models/books.dart';

class BookBook extends StatefulWidget {
  @override
  _BookBookState createState() => _BookBookState();
}

class _BookBookState extends State<BookBook> {

  TextEditingController booktitle=TextEditingController();
  TextEditingController bookdesc=TextEditingController();
  TextEditingController bookauthor=TextEditingController();
  TextEditingController bookprice=TextEditingController();
  List<Books> booklist=[
  ];
  @override
  Widget build(BuildContext context) {
    return
      SizedBox.expand(
        child: Container(
          padding: EdgeInsets.only(left: 20.0,top: 20.0,right: 20.0),
          child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Text("Books",style: TextStyle(
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

                        controller: booktitle,

                        decoration: InputDecoration(

                            hintText: "Enter Book Name",

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
                        controller: bookdesc,
                        decoration: InputDecoration(

                            hintText: "Enter Book Description",

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

                        controller: bookauthor,

                        decoration: InputDecoration(

                            hintText: "Enter Author Name",

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
                      child:   TextField(

                        controller: bookprice,

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
                          var bktitle=booktitle.text;
                          var bkdescr=bookdesc.text;
                          var bkauthor=bookauthor.text;
                          var bkpri=bookprice.text;
                          setState(() {


                            booklist.add(Books(title:bktitle, descr:bkdescr, author:bkauthor, price:int.parse(bkpri)));

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
                        itemCount: booklist.length==null?0:booklist.length,
                        itemBuilder: (context,index){
                          return Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [Color(0xff0B486B),Color(0xffF56217)])
                              ),
                              child: ListTile(
                                leading: Icon(Icons.library_books),
                                trailing: GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        booklist.removeAt(index);
                                      });
                                    },
                                    child: Icon(Icons.delete)),
                                title: Text("Book :"+booklist[index].title,style: TextStyle(
                                    color: Colors.green
                                ),),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Description :"+booklist[index].descr,style: TextStyle(
                                        color: Colors.red
                                    ),),
                                    Text("Author :"+booklist[index].author,style: TextStyle(
                                        color: Colors.red
                                    )),
                                    Text("Price :${booklist[index].price}",style: TextStyle(
                                        color: Colors.red))

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
      );
  }
}
