import 'base.dart';

class MissingFluexPluginException implements Exception {
  final String _message;

  MissingFluexPluginException.resolve(String name)
      : _message = "Missing plugin: $name";

  @override
  String toString() => _message;
}