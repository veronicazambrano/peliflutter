// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pelicula_application_1/screen/pages/catalogoScreen.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 18),
      appBar: AppBar(
        title:  Text("Registro", style: TextStyle(color: const Color.fromARGB(255, 242, 240, 240))),
        backgroundColor: const Color.fromARGB(255, 90, 87, 90),
      ),
      body: registro(context),
    );
  }
}

Widget registro(context){
 TextEditingController correo = TextEditingController();
 TextEditingController pasw = TextEditingController();
 return Column(
   children: [
    SizedBox(height: 150,),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextField(
        controller: correo ,
        decoration: InputDecoration(
          label: Center(child: Text("Correo",style: TextStyle(color: Colors.white),)),
          border: OutlineInputBorder()
        ),
       
       ),
     ),
     SizedBox(height: 20,),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextField(
        obscureText: true,
        controller: pasw ,
        decoration: InputDecoration(
          label: Center(child: Text("Contasenia",style: TextStyle(color: Colors.white),)),
          border: OutlineInputBorder()
        ),
       
       ),
     ),
     FilledButton(
      onPressed: ()=> registroUser(context, correo.text, pasw.text), 
     child: const Text("Iniciar ")

     )
   ],
 );
}
 Future<void> registroUser(context, correo, pass) async {
  try {
  Navigator.push(context,MaterialPageRoute(builder: (context)=>CatalogoScreen()));
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
} catch (e) {
  print(e);
}
 }