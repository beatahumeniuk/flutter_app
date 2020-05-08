import 'package:flutter/material.dart';
import 'package:mobile/pages/menu.dart';
import 'colors.dart';
import 'theme.dart' as Theme;

void main() => runApp(S4TimeApp());

class S4TimeApp extends StatelessWidget {
  final appTitle = 'S4TIME';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: Theme.theme,
      home: MenuPage(),
    );
  }

}