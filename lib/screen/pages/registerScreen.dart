// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

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
      onPressed: ()=> (context, correo.text, pasw.text), 
     child: const Text("Iniciar ")

     )
   ],
 );
}