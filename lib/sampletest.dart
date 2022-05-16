import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      title: "RadioListTile Flutter",
      home: NepaliDatePickerExample(),
    );
  }
}
enum Language { ENGLISH, HINDI }
enum Sport { CRICKET, FOOTBALL }
class NepaliDatePickerExample extends StatefulWidget {
  @override
  _NepaliDatePickerExampleState createState() =>
      _NepaliDatePickerExampleState();
}
class _NepaliDatePickerExampleState extends State<NepaliDatePickerExample> {
  Language _language = Language.ENGLISH;
  Sport _sport = Sport.CRICKET;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("RadioListTile Flutter"),
          centerTitle: true,
        ),
        body: Center(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(width: 10.0),
                          Text(
                            'Row: ',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          _radio<Language>('English', Language.ENGLISH, _language,
                                  (value) => setState(() => _language = value)),
                          _radio<Language>('Nepali', Language.HINDI, _language,
                                  (value) => setState(() => _language = value)),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 15.0),
                                Text(
                                  'Column: ',
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              ],
                            ),
                            Expanded(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      _radio<Sport>('Cricket', Sport.CRICKET, _sport,
                                              (value) => setState(() => _sport = value)),
                                      _radio<Sport>('Football', Sport.FOOTBALL, _sport,
                                              (value) => setState(() => _sport = value)),
                                    ]))
                          ])
                    ]))));
  }
  Widget _radio<T>(
      String title,
      T value,
      T groupValue,
      ValueChanged<T> onChanged,
      //VoidCallback<T> onChanged,
      ) {
    return Flexible(
      child: RadioListTile<T>(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        title: Text(title),
      ),
    );
  }
}