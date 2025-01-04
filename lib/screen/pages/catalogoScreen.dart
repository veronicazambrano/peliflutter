// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pelicula_application_1/screen/pages/crud/editarScreen.dart';
import 'package:pelicula_application_1/screen/pages/crud/leerScreen.dart';

class CatalogoScreen extends StatefulWidget {
  const CatalogoScreen({super.key});

  @override
  State<CatalogoScreen> createState() => _CatalogoScreenState();
}

class _CatalogoScreenState extends State<CatalogoScreen> {
  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuerpo(),
      ) 
      ; 
  }
}
class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  int indice = 0;
  List<Widget> vistas = [const CatalogoScreen(), const Leer(),
  const Editar()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Text("StreamCine!!!")),
        leading: const Icon(Icons.menu),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          SizedBox(width: 20,),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notification_add)),
          SizedBox(width: 10,)
          ],
      ),
      body:  GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 10, // Ejemplo con 10 películas
        itemBuilder: (context, index) {
          return MovieCard(
            title: 'Película ${index + 1}',
            imageUrl: 'https://hips.hearstapps.com/es.h-cdn.co/crfes/images/ninos/ocio/peliculas-para-ver-en-familia/brave-indomable/3633391-1-esl-ES/Brave-Indomable.jpg?resize=980:*', 
          );
        },
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:indice,
        onTap: (index){
          setState(() {
            indice = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add_check),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_remove),
            label: 'Configuraciones',
          ),
        ],
        
        selectedItemColor: Colors.blue,
      ),
    );
    
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const MovieCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[300],
              // Aquí iría la imagen de la película
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
