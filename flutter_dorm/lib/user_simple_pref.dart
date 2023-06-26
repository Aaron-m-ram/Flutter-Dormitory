import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePreferences {
  static late SharedPreferences _preferences;

  static const _keyGlobalList = 'globallist';
  static const _keyTester = 'test';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setGlobalList(List<String> globallist) async =>
      await _preferences.setStringList(_keyGlobalList, globallist);

  static List<String>? getGlobalList() =>
      _preferences.getStringList(_keyGlobalList);

  static Future setTest(List<String> test) async =>
      await _preferences.setStringList(_keyTester, test);

  static List<String>? getTest() => _preferences.getStringList(_keyTester);
}
