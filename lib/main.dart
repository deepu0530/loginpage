import 'package:flutter/material.dart';
import 'package:set_state/SecondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Loginpage(),
    );
  }
}

class Loginpage extends StatefulWidget {

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {

  bool _value2 = false;
  int select = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(
         padding: EdgeInsets.symmetric(horizontal: 50),
         child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                      InkWell(
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter your email",
                                  labelText: "User name",
                                ),
                                cursorHeight: 25.0,
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter your phone number",
                                  labelText: "Password",
                                ),
                                cursorHeight: 20.0,
                                keyboardType: TextInputType.text,
                              ),
                            ),
                          ],
                        ),
                      ),
                SizedBox(height: 20,),
                CheckboxListTile(
                  value: _value2,
                  title: Text("Remember me"),
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (val){
                    setState(() {
                      _value2 = val;
                    });
                  },
                ),
                SizedBox(height: 20,),
                Container(
                  width: 500,
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(
                      ),
                    ),);},
                    child: Text("Login"),
                    color: Colors.blue,
                  ),
                ),

                  ],
    )
    ),
       ),
    );
  }
}

