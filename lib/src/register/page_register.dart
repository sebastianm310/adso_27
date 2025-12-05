import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'button_register.dart';
import '../utils/my_colors.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        width: double.infinity,
        color: MyColors.blanco,
        child: Stack(
          children: [
            Positioned(left: -80, top: -60, child: _circleRegister()),
            Positioned(left: 20, top: 60, child: _textRegister()),
            Positioned(left: 10, top: 30, child: _iconBack(context)),
            Container(
              margin: EdgeInsets.only(top:150),
              width: double.infinity,
              child:SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _imageUser(),
                    _textFieldEmail(),
                    _textFieldFirstName(),
                    _textFieldLastName(),
                    _textFieldPhone(),
                    _textFieldPassword(),
                    _textFieldConfirmPassword(),
                    ButtonRegister(),
                    _rowTextAlreadyHaveAccount(context),
                  ],
                ),
              )
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
      color: MyColors.rojoPrimario,
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
      color: MyColors.blanco,
    ),
  );
}
Widget _iconBack(BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(
      Icons.arrow_back,
      color: MyColors.blanco,
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
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Email',
        prefixIcon: Icon(Icons.email),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.granate, width: 2.0),
        )
      ),
    ),
  );
}
Widget _textFieldFirstName() {
  return Container(
    decoration: BoxDecoration(
      color: MyColors.blanco,
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
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.granate, width: 2.0),
        )
      ),
    ),
  );
}
Widget _textFieldLastName() {
  return Container(
    decoration: BoxDecoration(
      color: MyColors.blanco,
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
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.granate, width: 2.0),
        )
      ),
    ),
  );
}
Widget _textFieldPhone() {
  return Container(
    decoration: BoxDecoration(
      color: MyColors.blanco,
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
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.granate, width: 2.0),
        )
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
          borderSide: BorderSide(color: MyColors.granate, width: 2.0),
        )
      ),
      obscureText: true,
    ),
  );
}
Widget _textFieldConfirmPassword() {
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
        hintText: 'Confirm Password',
        prefixIcon: Icon(Icons.password),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.granate, width: 2.0),
        )
      ),
      obscureText: true,
    ),
  );
}

Widget _rowTextAlreadyHaveAccount(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Already have account?"),
      SizedBox(width: 15),
      TextButton(
        onPressed: () {
          Navigator.pushNamed(context, 'login');
        },
        child: const Text("Sign in"),
      ),
    ],
  );
}


