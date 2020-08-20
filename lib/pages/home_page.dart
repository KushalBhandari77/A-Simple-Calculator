import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double a,b,c=0;

  TextEditingController textbox1=TextEditingController();
  TextEditingController textbox2=TextEditingController();
  TextEditingController textbox3=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A Basic Calculator"),
      ),
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(

          child: Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(

              children: <Widget>[

                Text("$c",textScaleFactor: 3,),
                SizedBox(height: 30,),
                TextField(
                  controller: textbox1,
                  decoration: InputDecoration(
                    hintText: "Enter First Number",
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: textbox2,
                  decoration: InputDecoration(
                    hintText: "Enter Second Number",
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20,),
               GridView.count(
                 crossAxisSpacing: 10,
                 mainAxisSpacing: 10,
                 crossAxisCount: 2,
                 shrinkWrap: true,
                 children: <Widget>[
                   RaisedButton(onPressed: (){
                     setState(() {
                       a=double.parse(textbox1.text);
                       b=double.parse(textbox2.text);
                       c=a+b;
                     });
                   },
                     child: Text("ADD"),),
                   RaisedButton(onPressed: (){
                      setState(() {
                        a=double.parse(textbox1.text);
                        b=double.parse(textbox2.text);
                        c=a-b;
                      });
                   },
                     child: Text("Subtract"),),
                   RaisedButton(onPressed: (){
                    setState(() {
                      a=double.parse(textbox1.text);
                      b=double.parse(textbox2.text);
                      c=a*b;
                    });
                   },
                     child: Text("Multiply"),),
                   RaisedButton(onPressed: (){
                      setState(() {
                        a=double.parse(textbox1.text);
                        b=double.parse(textbox2.text);
                        c=a/b;
                      });
                   },
                     child: Text("Divide"),),
                 ],
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
