import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      home: CustomHomePage()
    );
  }
}

class CustomHomePage extends StatefulWidget {
  const CustomHomePage({Key? key}) : super(key: key);

  @override
  _CustomHomePageState createState() => _CustomHomePageState();
}

class _CustomHomePageState extends State<CustomHomePage> {
  // The group value
  var _result;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Please select your profile',
        ),
      ),
      body:  Card(
      child: Padding(
          padding: const EdgeInsets.all(12),
      child: Column(
      children:[
          Text('Please select your profile'),
        Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
               //const Text('Shipper'),
               //children:<Widget>[
               //Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Expanded(
                      child: RadioListTile(
                  title: const Text('Shipper'),
                  value: 'Shipper',
                  groupValue: _result,
                  //children: <Widget>[
                  onChanged: (value) {
                    setState(() {
                      _result = value;
                    });
                  },
              )),

                      Expanded(
                    flex: 3,
                    child: Text(
                      "Lorem ipsum dolor sit amet,consectetur adipscing",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyle(color: Colors.black, fontSize: 12.0),
                    ),
                  ),
                    Expanded(
                    flex: 1,
                    child: InkWell(
                      child: Icon(
                        Icons.factory,
                        color: Colors.green,
                        size: 30.0,
                      ),
                    ),
                  )]),
                //],
                //),
                ),
              ]
          ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                Expanded(
                child:
                RadioListTile(
                    title: const Text('Transporter'),
                    value: 'Transporter',
                    groupValue: _result,
                    //children: <Widget>[
                    onChanged: (value) {
                      setState(() {
                        _result = value;
                      });
                  },
                )),
                        Expanded(
                      flex: 3,
                      child: Text(
                        "Lorem ipsum dolor sit amet,consectetur adipscing",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(color: Colors.black, fontSize: 12.0),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        child: Icon(
                          Icons.local_shipping,
                          color: Colors.green,
                          size: 30.0,
                        ),
                      ),
                    )])
                //])
    ),
                  ],
                  ),
              //const SizedBox(height: 25),
              //Text(_result == 7 ? 'Correct!' : 'Please chose the right answer!')
              ElevatedButton(
                  onPressed: () {
                    //setState(() {});

                  },
                  child: Text("Next", textDirection: TextDirection.ltr))
    ]))));
  }
}