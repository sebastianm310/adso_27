import 'package:flutter/material.dart';
import '../utils/my_colors.dart';
class ButtonRegister extends StatefulWidget {
  const ButtonRegister({super.key});

  @override
  State<ButtonRegister> createState() => _ButtonRegisterState();
}

class _ButtonRegisterState extends State<ButtonRegister> {
  @override
  Widget build(BuildContext context) {
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
        child: const Text("Registry", style: TextStyle(fontSize: 18, color: Colors.white)),
      ),
    );
  }
}