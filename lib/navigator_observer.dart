import 'package:flutter/material.dart';

class MyRouteObserver extends NavigatorObserver {
  final List _routeStack = [];
  List get getRouteStack => List.unmodifiable(_routeStack);

  @override
  void didPush(Route route, Route? previousRoute) {
    _routeStack.add(route.settings.name);
    debugPrint('Route pushed: ${route.settings.name}');
    printStack();
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _routeStack.removeLast();
    debugPrint('Route popped: ${route.settings.name}');
    printStack();
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    _routeStack.removeLast();
    debugPrint('Route removed: ${route.settings.name}');
    printStack();
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    int index = _routeStack.indexOf(oldRoute?.settings.name);
    _routeStack[index] = newRoute?.settings.name;
    debugPrint(
        "Replaced: ${oldRoute?.settings.name} → ${newRoute?.settings.name}");
    printStack();
  }

  void printStack() {
    debugPrint("📌 Navigation Stack:");
    for (var route in _routeStack) {
      debugPrint("➡️ $route");
    }
  }
}
