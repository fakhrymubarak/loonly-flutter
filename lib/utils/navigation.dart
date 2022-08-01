import 'package:flutter/material.dart';

/// Custom navigation extends BuildContext
extension Navigation on BuildContext {
  /// perform onBackPressed navigation
  /// @params result as navigation value when return things
  onBackPressed<T extends Object?>([T? result]) {
    Navigator.pop(this, result);
  }

  Future<dynamic> navigateTo(Widget screen) =>
      Navigator.push(this, MaterialPageRoute(builder: (_) {
        return screen;
      }));

  Future<dynamic> navigateToNamed<T extends Object?>(String name,
          [T? data]) =>
      Navigator.pushNamed(this, name, arguments: data);
}
