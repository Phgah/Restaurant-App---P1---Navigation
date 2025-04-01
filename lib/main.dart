import 'package:flutter/material.dart';
import 'screens/sign_in_screen.dart';
import 'screens/home_screen.dart';
import 'screens/forgot_password_screen.dart' as forgot;
import 'screens/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App Demo',
      theme: ThemeData(primarySwatch: Colors.orange),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignInScreen(),
        '/home': (context) => const HomeScreen(),
        '/forgotPassword': (context) => const forgot.ForgotPasswordScreen(),
        '/signUp': (context) => const SignUpScreen(),
      },
    );
  }
}
