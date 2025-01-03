import 'package:flutter/material.dart';
import 'package:pelicula_application_1/screen/pages/bienvenidosScreen.dart';

void main() async {
   // Inicializa Firebase.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Streaming App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(
        imagen: 'assets/images/StreamCine.png',
      ),
      
      routes: const {
      //  '/login': (context) => LoginScreen(),
        //'/catalog': (context) => MovieCatalogScreen(),
      },
    );
  }
}