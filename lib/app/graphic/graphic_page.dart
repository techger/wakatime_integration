import 'package:flutter/material.dart';

class GraphicPage extends StatefulWidget {
  final String title;
  const GraphicPage({Key key, this.title = "Graphic"}) : super(key: key);

  @override
  _GraphicPageState createState() => _GraphicPageState();
}

class _GraphicPageState extends State<GraphicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Graphic'),
      ),
    );
  }
}
