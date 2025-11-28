import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'button_register.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Positioned(left: -80, top: -60, child: _circleRegister()),
            Positioned(left: 20, top: 60, child: _textRegister()),
            Positioned(left: 10, top: 30, child: _iconBack()),
            Container(
              margin: EdgeInsets.only(top:150),
              width: double.infinity,
              child:Column(
                children: [
                  _imageUser(),
                  _textFieldEmail(),
                  _crearBasico("Name"),
                  _textFieldLastName(),
                  _textFieldPhone(),
                  _textFieldPassword(),
                  _textFieldConfirmPassword(),
                  ButtonRegister(),
                  _rowTextAlreadyHaveAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _circleRegister() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color(0xFF870027)
    ),
    height: 230,
    width: 240,
  );
}
Widget _textRegister() {
  return const Text(
    "Register",
    style: TextStyle(
      //color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}
Widget _iconBack() {
  return IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.arrow_back,
      color: Colors.white,
    ),
  );
}
Widget _imageUser() {
  return Container(
    margin: const EdgeInsets.only(
      bottom:20,
      top:30,
    ),
    child: const Image(
      image: AssetImage("assets/icons/logo.png"),
      height: 50,
    ),
  );
}

Widget _crearBasico(var texto) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      
    ),
    margin:const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 10,
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: texto,
        prefixIcon: texto=='Email'? Icon(Icons.email):Icon(Icons.person),
      ),
    ),
  );
}
Widget _textFieldEmail() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      
    ),
    margin:const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 10,
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: Icon(Icons.email),
      ),
    ),
  );
}
Widget _textFieldFirstName() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      
    ),
    margin:const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 10,
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'First Name',
        prefixIcon: Icon(Icons.person),
      ),
    ),
  );
}
Widget _textFieldLastName() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      
    ),
    margin:const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 10,
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Last Name',
        prefixIcon: Icon(Icons.person),
      ),
    ),
  );
}
Widget _textFieldPhone() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      
    ),
    margin:const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 10,
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Phone',
        prefixIcon: Icon(Icons.phone),
      ),
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
    ),

  );
}
Widget _textFieldPassword() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      
    ),
    margin:const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 10,
    ),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Password',
        prefixIcon: Icon(Icons.password),
      ),
      obscureText: true,
    ),
  );
}
Widget _textFieldConfirmPassword() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      
    ),
    margin:const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 10,
    ),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Confirm Password',
        prefixIcon: Icon(Icons.password),
      ),
      obscureText: true,
    ),
  );
}

Widget _rowTextAlreadyHaveAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Already have account?"),
      SizedBox(width: 15),
      TextButton(
        onPressed: () {},
        child: const Text("Sign in"),
      ),
    ],
  );
}


