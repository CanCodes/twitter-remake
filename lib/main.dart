import 'package:flutter/material.dart';
import './screens/home.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Twitter', debugShowCheckedModeBanner: false, home: Home());
  }
}
