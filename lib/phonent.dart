import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Phonentry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home: new PhonePage(),
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class PhonePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PhonePageState();
  }
}

class PhonePageState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              decoration: new InputDecoration(labelText: "Enter your number"),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            new ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text("Next", textDirection: TextDirection.ltr),
            ),
          ],
        ),
      ),
    );
  }
}