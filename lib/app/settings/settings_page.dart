import 'package:flutter/material.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';
import 'package:wakatime_integration/app/modules/home/home_controller.dart';

class SettingsPage extends StatefulWidget {
  final String title;

  const SettingsPage({Key key, this.title = "Settings"}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _offsetAnimation;
  final _homeController = HomeModule.to.getBloc<HomeController>();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(2.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlideTransition(
        position: _offsetAnimation,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Container(
              child: ListTile(
                title: Text(_homeController.loggedUser.name),
                subtitle: Text(_homeController.loggedUser.email),
                leading: CircleAvatar(
                  backgroundImage:
                  NetworkImage(_homeController.loggedUser.photo),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Theme.of(context).primaryColor),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: ListTile(
                title: Text("Criar um grupo",
                    style: TextStyle(color: Theme.of(context).primaryColor)),
              ),
            ),
            ListTile(
              title: Text("Participar de um grupo"),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: ListTile(
                title: Text('Sair', style: TextStyle(color: Colors.red)),
                onTap: () async => await _homeController.logout(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
