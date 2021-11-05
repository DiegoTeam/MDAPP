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
            color_custom: <Color>[
              Color(0xFF0D47A1),
              Color(0xFF1976D2),
              Color(0xFF42A5F5),
            ],
            onpressed: () async {
              await launch('https://pau.osde.com.ar/');
            }),
        RoundedButtonWidget(
            buttonText: 'Enviar WhatsApp a MDA',
            width: 300,
            color_custom: <Color>[
              Color(0xFF0D47A1),
              Color(0xFF1976D2),
              Color(0xFF42A5F5),
            ],
            onpressed: () async {
              await launch('https://api.whatsapp.com/send?phone=5491145105500');
            }),
        RoundedButtonWidget(
            buttonText: 'Llamar a MDA',
            width: 300,
            color_custom: <Color>[
              Color(0xFF0D47A1),
              Color(0xFF1976D2),
              Color(0xFF42A5F5),
            ],
            onpressed: () async {
              await launch('tel:01145105500');
            }),
        RoundedButtonWidget(
            buttonText: 'Alertas',
            width: 300,
            color_custom: <Color>[
              Color(0xFFF50505),
              Color(0xFFd42f2f),
              Color(0xFFf55b5b),
            ],
            onpressed: () async{
              _dialog(context);
            }),
      ],
    ));
  }
}

void _dialog(BuildContext context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Alertas'),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Alerta 1 - ticket 12321321'),
                Text('Alerta 1 - ticket 12321321'),
                Text('Alerta 1 - ticket 12321321'),
              ]
            )
              
          ],
          
        );
      });
}

Widget _crearLogo() {
  return const Image(
    image: AssetImage('assets/osde_mda.png'),
    fit: BoxFit.contain,
  );
}
