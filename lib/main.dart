import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF0000FF),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Text Widget'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var name;

  final nameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: new InputDecoration(
                hintText: 'Enter your name',
                hintStyle: TextStyle(color: Colors.lightBlue),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    borderSide: BorderSide(color: Colors.lightBlueAccent)),
              ),
              style: TextStyle(color: Color(0xFF0B0B61), fontSize: 29.0),
              textAlign: TextAlign.center,
            ),
            RaisedButton(
              color: Color(0xFF0B0B61),
              textColor: Colors.white,
              splashColor: Colors.blue,
              onPressed: () {
                setState(() {
                  name = nameController.text;
                });
              },
              child: Text('Submit'),
            ),
            RichText(
                text: TextSpan(
                    text: 'Your name is ',
                    style: TextStyle(
                      color: Color(0xFF0000FF),
                      fontSize: 29.0,
                    ),
                    children: [
                  TextSpan(
                      text: '$name',
                      style: TextStyle(
                        color: Color(0xFF0B0B61),
                        fontWeight: FontWeight.bold,
                      )),
                ])),
          ],
        ),
      ),
    );
  }
}
