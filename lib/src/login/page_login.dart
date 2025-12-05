import 'package:flutter/material.dart';
import '../utils/my_colors.dart';
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
        color: MyColors.blanco,
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
                _rowTextDontHaveAccount(context),
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
      color: MyColors.rojoPrimario,
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
      color: MyColors.blanco,
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
      image: AssetImage("assets/icons/logo.png"),
      height: 50,
    )
  );
}

Widget _textFieldEmail() {
  return Container(
    decoration: BoxDecoration(
      color: MyColors.blanco,
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
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.granate, width: 2.0),
        ),
      ),
      
    ),
  );
}

Widget _textFieldPassword() {
  return Container(
    decoration: BoxDecoration(
      color: MyColors.blanco,
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
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.granate, width: 2.0)
        ),
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
        backgroundColor: MyColors.rojoPrimario,

      ),
      child: const Text("Login", style: TextStyle(fontSize: 18, color: MyColors.blanco)),
    ),
  );
}

Widget _rowTextDontHaveAccount(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't have an account?"),
      SizedBox(width: 15),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, 'register');
        },
        child: const Text("Sign up"),
      ),
    ],
  );
}
