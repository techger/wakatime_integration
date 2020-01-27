import 'package:flutter/material.dart';

class GraphicFirebasePage extends StatefulWidget {
  final String title;
  const GraphicFirebasePage({Key key, this.title = "GraphicFirebase"})
      : super(key: key);

  @override
  _GraphicFirebasePageState createState() => _GraphicFirebasePageState();
}

class _GraphicFirebasePageState extends State<GraphicFirebasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Graphic Firebase'),
      ),
    );
  }
}
