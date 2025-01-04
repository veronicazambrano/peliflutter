import 'dart:math';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class Leer extends StatelessWidget {
  const Leer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: usuarioList(),
    );
  }
}
Widget usuarioList() {
 return FutureBuilder(future: leer(), builder: (context, snapshot) {
   if(snapshot.hasData){
     final data = snapshot.data;
     return ListView.builder( 
       itemCount: data!.length,
       itemBuilder: (context, index) {
         final user = data[index];
         return ListTile(
           title: Text(user['cedula']),
           subtitle: Text(user['nombre']),
         );
       }  
     );
   }else{
     return Text("No hay datos");
   }
 }) ; 
}
Future<List<Map<String, dynamic>>> leer() async {
  // Obtiene la referencia de los datos en Firebase
  DatabaseReference starCountRef = FirebaseDatabase.instance.ref('usuarios/');
  
  // Usamos get() para obtener los datos de una sola vez
  final snapshot = await starCountRef.get();  
  final data = snapshot.value;

  // Verificamos que los datos no sean nulos
  if (data != null) {
    // Realizamos un cast explícito a Map<dynamic, dynamic>
    Map<dynamic, dynamic> mapData = data as Map<dynamic, dynamic>;

    List<Map<String, dynamic>> userList = [];

    // Recorremos el mapa y lo convertimos en una lista de mapas
    mapData.forEach((key, value) {
      userList.add({
        'cedula': key,  // Usamos la clave como id
        'nombre': value['nombre'],  // Nombre del usuario
        'ciudad': value['ciudad'],  // Género del usuario
        'edad': value['edad'],  // Edad del usuario
      });
    });

    return userList;  // Devolvemos la lista de usuarios
  } else {
    return [];  // Si no hay datos, devolvemos una lista vacía
  }
}
