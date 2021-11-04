import 'package:flutter/material.dart';
import 'package:MDA_OSDE_Mobile/screens/home.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{'/': (BuildContext contex) => HomePage()
  };
}
