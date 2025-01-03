// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Registro"),
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
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextField(
        controller: correo ,
        decoration: InputDecoration(
          label: Center(child: Text("Correo")),
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
          label: Center(child: Text("Contasenia")),
          border: OutlineInputBorder()
        ),
       
       ),
     ),
     FilledButton(
      onPressed: ()=> (context, correo.text, pasw.text), 
     child: const Text("Iniciar ")

     )
   ],
 );
}