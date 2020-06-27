import 'package:anti_toilet_paper_hoarder/paper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Virtual Toilet Paper Hoarder',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: const Color(0xFF81d4fa)),
        home: MyHomePage(title: 'Virtual Toilet Paper Hoarder'),
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    print("touch");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4ba3c),
        title: Text(widget.title, style: TextStyle(fontFamily: 'IndieFlower', fontSize: 25.0, fontWeight: FontWeight.bold))
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 360,
                maxHeight: 500,
              ),
              child: Container(
                color: const Color(0xFF81d4fa),
                padding: EdgeInsets.all(5),
                child: Container(
                  child: GestureDetector(
                      onTap: _incrementCounter, child: ToiletPaper()),
                ),
              ),
            ),
            Expanded(
              child: Center(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                child: Column(
                  // Column is also layout widget. It takes a list of children and
                  // arranges them vertically. By default, it sizes itself to fit its
                  // children horizontally, and tries to be as tall as its parent.
                  //
                  // Invoke "debug painting" (press "p" in the console, choose the
                  // "Toggle Debug Paint" action from the Flutter Inspector in Android
                  // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                  // to see the wireframe for each widget.
                  //
                  // Column has various properties to control how it sizes itself and
                  // how it positions its children. Here we use mainAxisAlignment to
                  // center the children vertically; the main axis here is the vertical
                  // axis because Columns are vertical (the cross axis would be
                  // horizontal).
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Swipe left OR right to use toilet papers.',
                      style: TextStyle(fontFamily: 'IndieFlower', fontSize: 20.0,)
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
