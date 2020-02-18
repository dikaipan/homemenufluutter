import 'package:home_menu_flutter/screens/home.dart';

/*******************************************************************************
 * Copyright Dikaipan (c) 2020.
 ******************************************************************************/

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}
