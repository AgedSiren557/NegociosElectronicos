import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget{
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen>{
  @override
  Widget build(BuildContext context){
    return SafeArea(
        child: Scaffold(
         body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30.0),
                _logoContainer(),
                const SizedBox(height: 15.0,),
                _nameTextField(),
                const SizedBox(height: 15.0,),
                _phoneTextField(),
                const SizedBox(height: 15.0,),
                _emailTextField(),
                const SizedBox(height: 15.0,),
                _passwordTextField(),
                const SizedBox(height: 15.0,),
                _cofirmPasswordTextField(),
                const SizedBox(height: 15.0,),
                _buttonSignUp(),
              ],
            ),

         ),
        )
    );
  }
  Widget _logoContainer(){
    return StreamBuilder(
        builder:(BuildContext context, AsyncSnapshot snapshot){
          return Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 4,
                child: Image.asset('lib/images/logo.png'),

          );
        }
    );
  }

  Widget _nameTextField(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal:20.0 ),
            child: TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Nombre',
                labelText: 'Nombre y apellido',
              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }

  Widget _phoneTextField(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal:20.0 ),
            child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: '+11 1111 1111',
                  labelText: 'Telefono',

              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }

  Widget _emailTextField(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal:20.0 ),
            child: TextField(
                keyboardType: TextInputType.emailAddress,

                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  hintText: 'ejemplo@dominio.com',
                  labelText: 'Correo',
              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }

  Widget _passwordTextField(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal:20.0 ),
            child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: '**********',
                  labelText: 'Contraseña',

              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }

  Widget _cofirmPasswordTextField(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return Container(
            padding: EdgeInsets.symmetric(horizontal:20.0 ),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: '**********',
                labelText: 'Confirmar contraseña',
              ),
              onChanged: (value){

              },
            ),
          );
        }
    );
  }

  Widget _buttonSignUp(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return ElevatedButton(
            onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              backgroundColor: const Color(0XE8D1E2E8),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
              child: const Text(
                'Aceptar',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),

          );
        }
    );
  }
}