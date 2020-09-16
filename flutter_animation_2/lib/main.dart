import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Animation'),
    );
  }
}

/* 
Flutter Animations ==> 2 types
1. Implicit --> Flutter Widgets --> Simple
   AnimatedFoo();
   Foo ==> Container, ListView, Positioned, Opacity etc.


2. Explicit --> Own (flutter/dart) --> Complex
3. Rive (pre-req ==> After Effects / Video Editing)
*/

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* 
  1. initState()
  2. dispose()
  3. setState() ==> GAME!!!
  */

  double size = 100;
  Color myColor = Colors.orange;

  double myOpacity = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
                opacity: myOpacity,
                duration: Duration(milliseconds: 800),
                child: Image.asset('assets/logo.png')),
            // AnimatedContainer(
            //   duration: Duration(milliseconds: 300),
            //   height: size,
            //   width: size,
            //   color: myColor,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      myOpacity = 1;
                      size = 100;
                      myColor = Colors.purple;
                    });
                  },
                  child: Text("ON"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      myOpacity = 0.001;
                      size = 50;
                      myColor = Colors.deepOrange;
                    });
                  },
                  child: Text('OFF'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
