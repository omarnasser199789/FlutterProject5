import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
      home:new MyTextInput()
  ));
}

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState()=> new MyTextInputState();

}

class MyTextInputState extends State<MyTextInput>{
  String result="";
  final TextEditingController controller=new TextEditingController();
  @override
  Widget build(BuildContext context){

    return new Scaffold(
      appBar: new AppBar(title: new Text("input text"),backgroundColor: Colors.deepOrange),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Type in here !"
                ),
//                onChanged: (String str){
//                  setState(() {
//                    result=str;
//                  });
//                },
              onSubmitted: (String str){
                  setState(() {
                    result=result +"\n" + str;
                  });
                  controller.text="";
              },
              ),
              new Text(result)

            ],
          ),
        )
      ),
    );
  }
}