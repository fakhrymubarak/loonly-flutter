import 'package:flutter/material.dart';


/// Custom navigation extends BuildContext
extension Navigation on BuildContext {
  onBackPressed() {
    Navigator.pop(this);
  }

  Future<dynamic> navigateTo(Widget screen) =>
      Navigator.push(this, MaterialPageRoute(builder: (_) {
        return screen;
      }));
}
