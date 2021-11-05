import 'dart:io';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:MDA_OSDE_Mobile/widgets/button_custom.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _crearLogo(),
        RoundedButtonWidget(
            buttonText: 'Abrir Portal de Autogestión',
            width: 300,
            onpressed: () async {
              await launch('https://pau.osde.com.ar/');
            }),
        RoundedButtonWidget(
            buttonText: 'Enviar WhatsApp a MDA',
            width: 300,
            onpressed: () async {
              await launch('https://api.whatsapp.com/send?phone=5491145105500');
            }),
        RoundedButtonWidget(
            buttonText: 'Llamar a MDA',
            width: 300,
            onpressed: () async{
              await launch('tel:01145105500');
            }),
      ],
    ));
  }
}


Widget _crearLogo() {
  return const Image(
    image: AssetImage('assets/osde_mda.png'),
    fit: BoxFit.contain,
  );
}
