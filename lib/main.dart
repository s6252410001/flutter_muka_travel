import 'package:flutter/material.dart';
import 'package:flutter_muka_travel/views/login_ui.dart';


main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUI(),
      theme: ThemeData(
        fontFamily: 'Kanit',
        ),
    ),
  );
}