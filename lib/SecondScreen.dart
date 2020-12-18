import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text("Back"),
                  onPressed: (){
    Navigator.pop(
    context,
    MaterialPageRoute(
    builder: (context) => SecondScreen(
    ),
    ),);}
  ),

            ],
          ),
        ),
      ),
    );
  }
}
