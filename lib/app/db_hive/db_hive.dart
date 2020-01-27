import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wakatime_integration/app/models/user.dart';

class DbHive {
  final String boxName = 'doutTimeBox';

  Future<Box> initBox() async {
    final docDirectory = await getApplicationDocumentsDirectory();
    Hive.init(docDirectory.path);
    return await Hive.openBox(boxName);
  }

  Future<User> saveUser(User _user) async {
    final Box _box = await this.initBox();
    _box.put('user', _user.toJson());
    return _user;
  }

  Future<void> deleteUser() async {
    final Box _box = await this.initBox();
    await _box.delete('user');
  }

  Future<User> getUser() async {
    final _box = await this.initBox();
    final _boxUser = _box.get('user');
    if (_boxUser != null) {
      final Map<String, dynamic> _userMap =
      Map<String, dynamic>.from(_boxUser);
      return User.fromJson(_userMap);
    }
    return null;
  }
}
