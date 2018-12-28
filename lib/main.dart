import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'inputrow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Circuit Timer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Circuit Timer'),
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
  int _counter = 0;
  bool _play = false;

  void _startTimer() {
    SystemSound.play(SystemSoundType.click);
    setState(() {
      _counter++;
      _play = !_play;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InputRow( 
            title: 'Workout Time (s)', 
            val: _counter, 
            onPressed: _startTimer,
          ),
          InputRow( 
            title: 'Workout Time (s)', 
            val: _counter, 
            onPressed: _startTimer,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _startTimer,
        tooltip: 'Start',
        child: Icon(_play ? Icons.play_arrow : Icons.pause),
      ),
    );
  }
}
