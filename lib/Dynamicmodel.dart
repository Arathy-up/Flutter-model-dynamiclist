import 'package:flutter/material.dart';
import 'package:flutter_dynamic_model/Model/Booklist.dart';

class Dynamicmodel extends StatefulWidget {
  @override
  _DynamicmodelState createState() => _DynamicmodelState();
}

class _DynamicmodelState extends State<Dynamicmodel> {
  TextEditingController bookname=TextEditingController();
  TextEditingController bookauthor=TextEditingController();
  TextEditingController bookprice=TextEditingController();
  List<Booklist> Bookdetails=[];
  //int _index=0;

  @override
  Widget build(BuildContext context) {
    return 
      SingleChildScrollView(
        child: SafeArea(
          child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.grey,Colors.blueGrey]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: bookname,
                  decoration: InputDecoration(
                    hintText: "Enter book name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    prefixIcon: Icon(Icons.book)
                  ),
                ),
                TextField(
                  controller: bookauthor,
                  decoration: InputDecoration(
                      hintText: "Enter Book Author",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      prefixIcon: Icon(Icons.person)
                  ),

                ),
                TextField(
                  controller: bookprice,
                  decoration: InputDecoration(
                      hintText: "Enter Book price",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      prefixIcon: Icon(Icons.attach_money)
                  ),
                ),
                RaisedButton(onPressed: (){
                  var bname=bookname.text;
                  var bauthor=bookauthor.text;
                  var bprice=int.parse(bookprice.text);
                  setState(() {
                    Bookdetails.addAll([Booklist(name: bname,author: bauthor,price: bprice)]);

                  });
                },
                child: Text("Submit"),),
                
                SizedBox(height: 100,),
                SingleChildScrollView(
                  child:
                  SafeArea(
                    child:
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height-200,
                        decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )
                        ),
                        child:
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: ListView.builder(
                              shrinkWrap: true,
                                itemCount: Bookdetails.length==null? 0: Bookdetails.length,
                                itemBuilder: (context,index){
                              return Card(
                                child: ListTile(
                                  title: Text("Book Name:"+Bookdetails[index].name),
                                  subtitle: Text("Book Author:"+Bookdetails[index].author+"\n"+"Book Price:"+"${Bookdetails[index].price}"),
                                leading: Icon(Icons.book),
                                ),
                              );
                            }),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
    ),
        ),
      );
  }
}
