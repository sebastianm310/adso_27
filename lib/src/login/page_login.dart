import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          children: [
            Positioned(left: -80, top: -60, child: _circleLogin(),),
            Positioned(left: 20, top: 60, child: _textLogin(),),
            Column(
              children: [
                _imageBanner(),
                _textFieldEmail(),
                _textFieldPassword(),
                _buttonLogin(),
                _rowTextDontHaveAccount(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
Widget _circleLogin() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Color(0xFF870027)
    ),
    height: 230,
    width: 240,
  );
}

Widget _textLogin() {
  return const Text(
    "Login",
    style: TextStyle(
      //color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

Widget _imageBanner() {
  return Container(
    margin: const EdgeInsets.only(
      bottom:20,
      top:200,
    ),

    child: const Image(
      image: AssetImage("assets/icons/login.png"),
      height: 50,
    )
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
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: Icon(Icons.email),
      ),
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

Widget _buttonLogin() {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(vertical: 15),
        backgroundColor: Color(0xFF870027),

      ),
      child: const Text("Login", style: TextStyle(fontSize: 18, color: Colors.white)),
    ),
  );
}

Widget _rowTextDontHaveAccount() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have an account?"),
      SizedBox(width: 15),
      TextButton(
        onPressed: () {},
        child: const Text("Sign up"),
      ),
    ],
  );
}