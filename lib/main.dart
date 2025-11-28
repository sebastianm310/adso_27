import 'package:flutter/material.dart';
import 'src/login/page_login.dart';
import 'src/register/page_register.dart';
void main() {
  runApp(const MyApp());
}
class _MyAppState extends State <MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'register',
      routes: {
        "register": (context) => const RegisterPage(),
      },
      theme: ThemeData(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      title: "Delivery App",
    );
  }
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

