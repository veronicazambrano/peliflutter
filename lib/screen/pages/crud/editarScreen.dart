import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Editar extends StatelessWidget {
  const Editar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
Widget formulario(){
  TextEditingController cedula = TextEditingController();
TextEditingController nombre = TextEditingController();
 TextEditingController edad = TextEditingController();
 return Column(
   children: [
    SizedBox(height: 150,),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextField(
        controller: cedula ,
        decoration: InputDecoration(
          label: Center(child: Text("Cedula",style: TextStyle(color: Colors.white),)),
          border: OutlineInputBorder()
        ),
       
       ),
     ),
     SizedBox(height: 20,),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextField(
        controller: nombre ,
        decoration: InputDecoration(
          label: Center(child: Text("Nombre",style: TextStyle(color: Colors.white),)),
          border: OutlineInputBorder()
        ),
       
       ),
     ),
     SizedBox(height: 20,),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextField(
        controller: edad ,
        decoration: InputDecoration(
          label: Center(child: Text("Edad",style: TextStyle(color: Colors.white),)),
          border: OutlineInputBorder()
        ),
       
       ),
     ),
     SizedBox(height: 20,),
     FilledButton(onPressed: () => editar(cedula.text, nombre.text, edad.text),
     child: const Text("Guardar", style: TextStyle(color: Colors.white),)),
   ],
 );
}
Future<void> editar(cedula, nombre, edad) async {
  DatabaseReference ref = FirebaseDatabase.instance.ref("usuarios/"+cedula);

await ref.update({
  "nombre": nombre,
  "edad": edad
  });
}