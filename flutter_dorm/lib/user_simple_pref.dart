import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static late SharedPreferences _preferences;

  static const _keyUsername = 'username';
  static const _keyGlobalList = 'globallist';
  static const _keyTestGlobalList = 'globallist';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUserName(String username) async =>
      await _preferences.setString(_keyUsername, username);

  static String? getUserName() => _preferences.getString(_keyUsername);

  static Future setGlobalList(List<String> globallist) async =>
      await _preferences.setStringList(_keyGlobalList, globallist);

  static List<String>? getGlobalList() =>
      _preferences.getStringList(_keyGlobalList);

  static Future setTestGlobalList(List<String> testgloballist) async =>
      await _preferences.setStringList(_keyTestGlobalList, testgloballist);

  static List<String>? getTestGlobalList() =>
      _preferences.getStringList(_keyTestGlobalList);
}
