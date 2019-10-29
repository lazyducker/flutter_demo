import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_package_tab_home/flutter_package_tab_home.dart';

void main() {
  //runApp(MyApp());
  runApp(new HomeTabApp());

  SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
}


