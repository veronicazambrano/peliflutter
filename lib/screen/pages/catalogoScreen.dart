// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CatalogoScreen extends StatelessWidget {
  const CatalogoScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Center(
          child: Text("MIRALAS YA!!!")),
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
            imageUrl: 'https://lumiere-a.akamaihd.net/v1/images/sdk_latam_payoff_localized_bpo_6e4f16c1.jpeg?region=0%2C0%2C2100%2C3000', 
          );
        },
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
