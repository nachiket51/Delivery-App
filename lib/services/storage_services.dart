import 'package:delivery_app/utils/keys.dart';
import 'package:get_storage/get_storage.dart';

class StorageService {
  static final _box = GetStorage();

  /// local DATA saving methods
  static saveUser(String user) {
    _box.write(PrimaryKeys.SAVE_USER, user);
  }

  /// local DATA fetching methods
  static String fetchUser() {
    if (_box.read(PrimaryKeys.SAVE_USER) != null) {
      return _box.read(PrimaryKeys.SAVE_USER);
    }
    return '';
  }

  /// local DATA Deleting methods
  static removeUser() {
    _box.remove(_box.read(PrimaryKeys.SAVE_USER));
  }
}
