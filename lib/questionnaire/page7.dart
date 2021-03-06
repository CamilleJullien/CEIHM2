import 'package:ceihm/data/user.dart';
import 'package:ceihm/questionnaire/page1.dart';
import 'package:ceihm/questionnaire/page3.dart';
import 'package:ceihm/questionnaire/page4.dart';
import 'package:ceihm/questionnaire/page6.dart';
import 'package:ceihm/questionnaire/page8.dart';
import 'package:ceihm/synthesis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page7 extends StatefulWidget {
  Page7({Key key}) : super(key: key);

  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  var _formKey = GlobalKey<FormState>();
  String dropdownValue = User.dormir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Question 7/11"),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment(-1.0, -1.0),
                    colors: <Color>[Color(0xff8d70fe), Color(0xff2da9ef)])),
          ),
        ),
        body: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Avez-vous des difficultés à dormir ?",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Form(
                  key: this._formKey,
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                        User.dormir = newValue;
                      });
                    },
                    items: <String>[
                      'Non',
                      'Oui',
                      'Ne sait pas',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page6()),
                      );
                    },
                    textColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xff8d70fe),
                            Color(0xff2da9ef),
                          ],
                        ),
                      ),
                      child: Text('Précédent', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                  FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page8()),
                      );
                    },
                    textColor: Colors.white,
                    child: Container(
                      padding: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xff8d70fe),
                            Color(0xff2da9ef),
                          ],
                        ),
                      ),
                      child: Text('Suivant', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              )
            ]));
  }
}
