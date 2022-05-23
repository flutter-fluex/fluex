import 'base.dart';
import '../../fluex.dart';

extension FluexSharedPreferencesExtension on Fluex {

  void setInt(String key, int value) => prefs.setInt(key, value);
  void setDouble(String key, double value) => prefs.setDouble(key, value);
  void setString(String key, String value) => prefs.setString(key, value);
  int? getInt(String key) => prefs.getInt(key);
  double? getDouble(String key) => prefs.getDouble(key);
  String? getString(String key) => prefs.getString(key);

  SharedPreferences get prefs => getExtensionNonNull<FluexSharedPreferencesPlugin>();
}
