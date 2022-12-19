import 'package:flutter/material.dart';

import 'SecondScreen.dart';
import 'SignUp_Screen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30.0,),
              _logoContainer(),
              const SizedBox(height: 20.0),
              _emailTextField(),
              const SizedBox(height: 20.0),
              _passwordTextField(),
              const SizedBox(height: 20.0),
              _buttonLogIn(),
              const SizedBox(height: 35),
              _createAccount(),
              const SizedBox(height: 35),
              _otherSignInText(),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _googleLogIn(),
                  const SizedBox(width: 30.0),
                  _facebookLogIn(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget _logoContainer(){
    return StreamBuilder(
        builder:(BuildContext context, AsyncSnapshot snapshot){
          return(
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                child: Image.asset('lib/images/logo.png'),
              )
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
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                hintText: 'ejemplo@dominio.com',
                labelText: 'Correo',
              ),
              onChanged: (value) {
                print('First text field: $value');

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
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                hintText: '**********',
                labelText: 'contraseña',
              ),
              onChanged: (String value) {

              },
            ),
          );
        }
    );
  }

  Widget _buttonLogIn(){
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
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 18,
                  ),
              ),
            ),

          );
        }
    );
  }

  Widget _googleLogIn(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen()));
            },
            child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white38,
              ),
              child: Image.asset('lib/images/google.png'),
            ),
          );
        }
    );

  }

  Widget _facebookLogIn(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen()));
            },
            child: Container(
              width: 60,
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white38,
              ),
              child: Image.asset('lib/images/facebook.png'),
            ),
          );
        }
    );
  }
Widget _createAccount(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) => SignUpScreen()));
            },
            child: Center(
                child: Text(
                  '- No tienes una cuenta? -',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
            ),
          );
      }
    );
  }

  Widget _otherSignInText(){
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot){
         return  Text(
           '- Iniciar Sesión con -',
           style: TextStyle(
             color: Colors.black,
             fontSize: 20,
             fontWeight: FontWeight.w500,
           ),
         );
        }
    );
  }
}


