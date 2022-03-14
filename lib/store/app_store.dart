import 'package:get_storage/get_storage.dart';

class AppStore {
  final GetStorage _box = GetStorage();

  void login(String accessToken) {
    _box.write('token', accessToken);
  }

  String get accessToken => _box.read('token');

  bool get isLoggedIn => (_box.read('token') ?? '').toString().isNotEmpty;

  Future<void> clear() {
    return _box.erase();
  }
}
