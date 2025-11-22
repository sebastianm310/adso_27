import 'package:flutter/material.dart';

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
            //Positioned(left: 10, top: 30, child: _iconBack()),
            Container(
              margin: EdgeInsets.only(top:150),
              width: double.infinity,
              child:Column(
                children: [
                  /*_imageUser(),
                  _textFieldEmail(),
                  _textFieldFirstName(),
                  _textFieldLastName(),
                  _textFieldPhone(),
                  _textFieldPassword(),
                  _textFieldConfirmPassword(),
                  _buttonRegister(),
                  _rowTextAlreadyHaveAccount(),*/
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

