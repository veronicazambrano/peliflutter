import 'package:flutter/material.dart';
import 'package:pelicula_application_1/screen/pages/bienvenidosScreen.dart';
//firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
   // Inicializa Firebase.
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
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
