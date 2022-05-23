abstract class Plugin<T> {
  T run();
}

abstract class FuturePlugin<T> extends Plugin<Future<T>> {}