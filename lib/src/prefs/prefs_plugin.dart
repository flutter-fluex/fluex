import 'package:shared_preferences/shared_preferences.dart' as sp;

import 'prefs.dart';

import '../base.dart';

class FluexSharedPreferencesPlugin implements FuturePlugin<FluexSharedPreferences> {
  @override
  Future<FluexSharedPreferences> run() => sp.SharedPreferences.getInstance()
      .then((prefs) => FluexSharedPreferences(prefs));
}