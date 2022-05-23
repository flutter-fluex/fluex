import 'package:shared_preferences/shared_preferences.dart' as sp;

import 'base.dart';

class FluexSharedPreferences implements SharedPreferences {

  final sp.SharedPreferences _prefs;

  FluexSharedPreferences(this._prefs);

  @override
  double? getDouble(String key) {
    return _prefs.getDouble(key);
  }

  @override
  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  @override
  String? getString(String key) {
    return _prefs.getString(key);
  }

  @override
  void setDouble(String key, double value) {
    _prefs.setDouble(key, value);
  }

  @override
  void setInt(String key, int value) {
    _prefs.setInt(key, value);
  }

  @override
  void setString(String key, String value) {
    _prefs.setString(key, value);
  }

}