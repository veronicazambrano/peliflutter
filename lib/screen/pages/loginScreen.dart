import 'package:flutter/material.dart';
import 'package:pelicula_application_1/Screen/pages/catalogoScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
      onPressed: ()=> loginUser(correo.text, pasw.text, context), 
      style: FilledButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 176, 82, 176),
      ),
     child: const Text("Iniciar Sesion")

     )
   ],
 );
}

Future<void> loginUser(context, correo, pass) async {
  try {
  Navigator.push(context,MaterialPageRoute(builder: (context)=>CatalogoScreen()));
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    // ignore: avoid_print
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    // ignore: avoid_print
    print('Wrong password provided for that user.');
  }
}
}

