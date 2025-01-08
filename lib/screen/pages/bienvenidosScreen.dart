// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pelicula_application_1/Screen/pages/loginScreen.dart';
import 'package:pelicula_application_1/screen/pages/registerScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, required String imagen});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 42, 42, 46),
        title: const Center(
          child: Text(
            'StreamCine',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          //IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                imagen(),
                const Text(
                "StreamCine",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
                const SizedBox(height: 16),
                const Text(
                "Bienvenido a StreamCine el mejor sitio para ver peliculas en streaming  con el mejor catalogo de peliculas y series de todo el mundo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                ),
                const SizedBox(height: 32),
                Inicio_btn(context),
                const SizedBox(height: 16),
                registro_btn(context)
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Inicio_btn(context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 176, 115, 185),
    ),
    onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginScreen())),
    child: const Text('Inicio',
        style: TextStyle(
      color: Colors.white,
    )),
  );
}
// ignore: non_constant_identifier_names
Widget registro_btn(context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 109, 46, 131),
    ),
    onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>RegistroScreen())),
    child: const Text('Registrate',
        style: TextStyle(
      color: Colors.white,
    )),
  );
}
 
 Widget imagen(){
   return SizedBox(
     height: 200,
     width: 200,
     child: Image.network("https://img.freepik.com/vector-gratis/fondo-super-cine_52683-1698.jpg?semt=ais_hybrid"),
   );
 }
