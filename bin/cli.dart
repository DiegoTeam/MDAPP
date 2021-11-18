import 'package:http/http.dart' as http;
import 'dart:convert';

void main() async {

  //Como la API tiene usuario y pass declaramos la autorizacion
  var header = {
    'Authorization':
        'Basic c29wb3J0ZXVzdWFyaW9zOkZFdWhSc2lPQThpU2doNWhXODVOQ3RYYw==',
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': 'true'
  };

  //Hacemos el GET a la API
  var request = http.Request('GET',
      Uri.parse('https://osded.cloud.invgate.net/api/v1/breakingnews.all'));
  request.headers.addAll(header);

  //Ejecutamos la API
  http.StreamedResponse response = await request.send();
  
  if (response.statusCode == 200) {
    var datosR = await response.stream.bytesToString();
    var json = jsonDecode(datosR);
    var alertas = json;
        
    
    for (var alerta in alertas) { //Entra en el json de la api y por cada {} hace un 'alerta'
      
      if (alerta['type_id'] == 1){ //Cada alerta es filtrada por su 'type_id' que debe ser igual a 1
        print(alerta['title']);//Imprime en terminal el titulo de 'alerta' (en este caso el titulo del banner)
      }
    }
  }
}


