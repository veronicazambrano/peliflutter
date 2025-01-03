import 'package:flutter/material.dart';
import 'package:pelicula_application_1/Screen/pages/catalogoScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 152, 198, 232),
      body: Center(
        
        child: 
        Column(
          children: [
            
            Text("Inicio de Sesion", style: TextStyle(fontSize: 30),
            
            ),
            login(context),
          ],
        ),
       
        ),
    );
  }
}

Widget login(context){
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
      onPressed: ()=> Navigator.push(context,MaterialPageRoute(builder: (context)=>CatalogoScreen())),
     child: const Text("Iniciar Sesion")

     )
   ],
 );
}

