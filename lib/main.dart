import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) {
//    super(key: key);

    print('1 constructor');
  }

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  /// scenarios:-
  ///at first=> 1 constructor
  /// 2 initState
  /// 3 didChangeDependencies
  ///==============================================================
  /// home button or app list button then return=> nothing
  ///==============================================================
  ///back button then return=> like at first
  ///

  @override
  void initState() {
    super.initState();
    //1 for constructor
    print('2 initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('3 didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('4 didUpdateWidget: $oldWidget');
  }

  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  void _incrementCounter() {
    setState(() {
      print('setState');
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
