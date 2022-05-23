/// 导航器基类
abstract class Navigator {

  Future<T?> push<T extends Object?>(
      String routeName, {
      dynamic arguments,
      dynamic extras
  });

  void pop<T extends Object>([T? result]);
}