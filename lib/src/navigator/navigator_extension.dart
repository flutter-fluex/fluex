import 'base.dart';
import '../../fluex.dart';
import 'navigator_plugin.dart';

/// 导航器
extension FluexNavigatorExtension on Fluex  {

  Future<T?> push<T extends Object?>(
      String routeName, {
      dynamic arguments,
      dynamic extras
  }) => navigator.push(
      routeName,
      arguments: arguments,
      extras: extras
  );

  void pop<T extends Object>([T? result]) => navigator.pop(result);

  Navigator get navigator => getExtensionNonNull<FluexNavigatorPlugin>();
}