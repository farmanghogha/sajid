import 'package:flutter/material.dart';


void main() {
  runApp( new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainScreen(),
  ));
}


class MainScreen extends StatefulWidget{

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String s="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
            child: TextField(
              decoration: InputDecoration(hintText: "User Name"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 20, 40, 30),
            child: TextField(
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),

          Center(
            child: ElevatedButton(

                onPressed: () {

                 s="Login Successfully.......";
                 setState(() {

                 });

                }, child: Text("Login")),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: TextField(
              decoration: InputDecoration(hintText: s),
            ),
          )
        ],
      ),
    );
  }
}