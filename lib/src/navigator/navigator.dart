import 'package:flutter/cupertino.dart' hide Navigator;

import 'base.dart';

class FluexNavigator implements Navigator {

  GlobalKey<NavigatorState>? _key;

  @override
  Future<T?> push<T extends Object?>(
      String routeName, {
      dynamic arguments,
      dynamic extras
  }) => _state?.pushNamed(
      routeName,
      arguments: arguments
  ) ?? Future.value();

  @override
  void pop<T extends Object>([T? result]) => _state?.pop(result);

  NavigatorState? get _state => _key?.currentState;
  GlobalKey<NavigatorState> get key => _key ??= GlobalKey();
}