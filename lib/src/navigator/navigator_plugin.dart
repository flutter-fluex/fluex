import '../base.dart';
import 'base.dart';
import 'navigator.dart';

class FluexNavigatorPlugin extends Plugin<Navigator> {
  @override
  Navigator run() => FluexNavigator();
}