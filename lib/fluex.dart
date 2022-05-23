import 'package:fluex/src/exceptions.dart';

import 'src/base/plugin.dart';

export 'src/plugins.dart';
export 'src/extensions.dart';
export 'src/exceptions.dart';

class Fluex {

  final Map<Type, dynamic> _extensions = {};

  Fluex._();

  /// 初始化插件
  /// @param plugins 插件列表
  Future registerPlugins(List<Plugin> plugins) async {
    for (Plugin plugin in plugins) {
      await registerPlugin(plugin);
    }
  }

  /// 初始化插件
  /// @param plugin 插件
  Future registerPlugin(Plugin plugin) async {
    Type pluginType = plugin.runtimeType;
    if (!_extensions.containsKey(pluginType)) {
      var extension = plugin.run();
      if (extension is Future) {
        _extensions[pluginType] = await extension;
      } else {
        _extensions[pluginType] = extension;
      }
    }
  }

  /// 获取某个扩展
  dynamic getExtension<T extends Plugin>() => _extensions[T];

  dynamic getExtensionNonNull<T extends Plugin>() {
    dynamic extension = getExtension<T>();
    if (extension == null) {
      String pluginName = T.runtimeType.toString();
      throw MissingFluexPluginException.resolve(pluginName);
    }
    return extension;
  }

}

Fluex fluex = Fluex._();