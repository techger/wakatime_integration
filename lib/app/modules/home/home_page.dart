import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wakatime_integration/app/graphic/graphic_module.dart';
import 'package:wakatime_integration/app/graphic_firebase/graphic_firebase_module.dart';
import 'package:wakatime_integration/app/models/user.dart';
import 'package:wakatime_integration/app/modules/home/home_controller.dart';
import 'package:wakatime_integration/app/modules/home/home_module.dart';
import 'package:wakatime_integration/app/settings/settings_module.dart';
import 'package:wakatime_integration/app/widgets/progress_indicator.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = HomeModule.to.getBloc<HomeController>();
  final _secretApiController = TextEditingController();
  final _pageController = PageController();

  @override
  initState() {
    _homeController.checkIfLoggedUser();
    super.initState();
  }

  Widget buildLoggedUser() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      onPageChanged: _homeController.onPageChanged,
      controller: _pageController,
      children: <Widget>[
        GraphicModule(),
        GraphicFirebaseModule(),
        SettingsModule(),
      ],
    );
  }

  Widget buildCardWithUser(User user) {
    return Center(
      child: Card(
        child: Container(
          padding: EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height * .4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(user?.photo ?? ""),
              ),
              Text(user.email),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text("Utilizar esta conta ?"),
                      onPressed: () async =>
                          await _homeController.saveUserInHive(),
                    ),
                    FlatButton(
                      child: Text("Usar outra conta ?"),
                      onPressed: _homeController.userAnotherAccount,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNotContent() {
    return !_homeController.isLoading && !_homeController.isLoadingLoggedUser
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _secretApiController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () async {
                        await _homeController
                            .insertSecretApi(_secretApiController.text);
                        _secretApiController.clear();
                      },
                    ),
                    border: OutlineInputBorder(),
                    labelText: 'Secret API Key',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async => await _homeController.launchSecretApiKey(),
                child: Text(
                  "Acesse sua key",
                  style: TextStyle(decoration: TextDecoration.underline),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        : Center(child: circularProgressIndicator());
  }

  Widget _buildBottomAppBar() {
    return Observer(
      builder: (_) => CupertinoTabBar(
        onTap: _changedPageView,
        currentIndex: _homeController.getCurrentIndexOnPageView,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot, size: 40.0),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }

  _changedPageView(int index) => _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.bounceOut,
      );

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: AnimatedContainer(
            curve: Curves.easeInOutBack,
            duration: Duration(seconds: 1),
            color: _homeController.appBarColor == null
                ? Theme.of(context).primaryColor
                : _homeController.appBarColor ? Colors.green : Colors.redAccent,
            child: Center(
              child: Text(
                'Dout Time',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
            ),
          ),
        ),
//        AppBar(
//          backgroundColor: _homeController.appBarColor == null
//              ? null
//              : _homeController.appBarColor ? Colors.green : Colors.redAccent,
//          title: Text("Dout Time"),
//          centerTitle: true,
//          actions: <Widget>[
//            Center(
//              child: Padding(
//                padding: const EdgeInsets.only(right: 8.0),
//                child: Observer(
//                  builder: (_) => CircleAvatar(
//                    radius: _homeController.isPersistUser ? 15.0 : 0.0,
//                    backgroundImage: _homeController.loggedUser != null
//                        ? NetworkImage(_homeController.loggedUser.photo)
//                        : null,
//                  ),
//                ),
//              ),
//            ),
//          ],
//        ),
        body: Observer(
          builder: (_) => _homeController.loggedUser != null
              ? buildLoggedUser()
              : Observer(
                  builder: (_) => _homeController.user != null
                      ? buildCardWithUser(_homeController.user)
                      : buildNotContent(),
                ),
        ),
        bottomNavigationBar:
            _homeController.loggedUser != null ? _buildBottomAppBar() : null,
      ),
    );
  }
}
