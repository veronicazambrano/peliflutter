import 'package:flutter/material.dart';
import 'package:pelicula_application_1/Screen/pages/catalogoScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 18, 18),
      appBar: AppBar(
        title:  Text("Login", style: TextStyle(color: const Color.fromARGB(255, 242, 240, 240)),),
        backgroundColor: const Color.fromARGB(255, 90, 87, 90),
      ),
      body:  
      login(context),
    );
  }
}

Widget login(context){
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
      onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>CatalogoScreen())),
      style: FilledButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 176, 82, 176),
      ),
     child: const Text("Iniciar Sesion")

     )
   ],
 );
}

