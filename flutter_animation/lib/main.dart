import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  double size = 200;
  Color myColor = Colors.red;
  double opacityVar = 0.3;

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
              opacity: opacityVar,
              duration: const Duration(milliseconds: 500),
              child: Container(
                color: Colors.blue,
                width: 300,
                height: 60,
                child: Center(
                    child: Text(
                  "Have a nice day!",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      opacityVar = 1;
                      // size = 300;
                      // myColor = Colors.red;
                    });
                  },
                  child: Text("ON"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      opacityVar = 0.2;
                      // size = 100;
                      // myColor = Colors.green;
                    });
                  },
                  child: Text("OFF"),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            AnimatedContainer(
              duration: const Duration(
                milliseconds: 300,
              ),
              height: size,
              width: size,
              color: myColor,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      size = 200;
                      myColor = Colors.red;
                    });
                  },
                  child: Text("BIG"),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      size = 80;
                      myColor = Colors.green;
                    });
                  },
                  child: Text("SMALL"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
