abstract class SharedPreferences {

  void setInt(String key, int value);
  void setDouble(String key, double value);
  void setString(String key, String value);

  int? getInt(String key);
  double? getDouble(String key);
  String? getString(String key);

}