import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wakatime_integration/app/modules/home/home_controller.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = HomeModule.to.getBloc<HomeController>();
  final _secretApiController = TextEditingController();

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
            TextField(
              controller: _secretApiController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Secret API',
              ),
            ),
            RaisedButton(
              onPressed: () {
                _homeController.insertSecretApi(_secretApiController.text);
                _secretApiController.clear();
              },
              child: Text("Salvar Secret API"),
            ),
            Observer(
              builder: (_) => Text("${_homeController.getUser}"),
            ),
          ],
        ),
      ),
    );
  }
}
