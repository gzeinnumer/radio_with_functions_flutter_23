import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  @override
  State createState() => new _State();
}

class _State extends State<MyApp>{

  int _value1 =0;
  int _value2 =0;

  void _setValue1(int value) => setState(()=> _value1 =value);

  void _setValue2(int value){
    setState(() {
      _value2 = value;
    });
  }

  //make RadioButton
  Widget makeRadios(){
    List<Widget> list = new List<Widget>();

    for(int i=0; i<3; i++){
        list.add(new Radio(
          value: i,
          groupValue: _value1,
          onChanged: _setValue1,));
    }
    
    Column column = new Column(
      children: list,
    );
    return column;
  }

  //make good RadioButton
  Widget makeRadioTiles(){
    List<Widget> list = new List<Widget>();

    for(int i=0; i<3; i++){
      list.add(
        new RadioListTile(
          value: i,
          groupValue: _value2,
          onChanged: _setValue2,
          activeColor: Colors.green,
          controlAffinity: ListTileControlAffinity.trailing,
          title: new Text('Item: ${i}'),
          subtitle: new Text('Sub title'),
        )
      );
    }

    Column column = new Column(children: list,);

    return column;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text('M. Fadli Zein'),),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              //call the function
              makeRadios(),
              makeRadioTiles()
            ],
          ),
        ),
      ),
    );
  }
}