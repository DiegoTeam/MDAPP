import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:MDA_OSDE_Mobile/config/routes/routes.dart';

void main() {
  // ignore: prefer_const_constructors
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light
      ));
  runApp(const MyApp());
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenidos a MDA OSDE Mobile',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getRoutes(),
    );
  }
}
