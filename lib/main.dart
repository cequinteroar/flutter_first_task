import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Task',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Flutter First Task'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _text = "Text to be changed";
  String _inputText = "";

  void _changeText() {
    setState(() {
      _text = _inputText;
    });
  }

  void changeInputText(value) {
    _inputText = value;
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
            Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Text(
                _text,
              ),
            ),
            SizedBox(
                width: 300,
                child: TextField(
                  onChanged: (value) => changeInputText(value),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Enter a search term',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () => _changeText(),
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
