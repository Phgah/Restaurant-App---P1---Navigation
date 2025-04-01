import 'package:flutter/material.dart';
import 'package:food_app_demo/auth_data.dart';
import 'package:food_app_demo/ widgets/custom_text_input.dart';
import 'package:food_app_demo/ widgets/custom_icon_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleSignIn() {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();
    // Kiểm tra dựa trên thông tin lưu trong AuthData
    if (email == AuthData.email && password == AuthData.password) {
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Email/Password không đúng!")),
      );
    }
  }

  void _handleGoogleSignIn() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _handleFacebookSignIn() {
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 24),
              CustomTextInput(
                controller: _emailController,
                labelText: "Email ID",
                hintText: "Enter your email here!",
              ),
              const SizedBox(height: 16),
              CustomTextInput(
                controller: _passwordController,
                labelText: "Password",
                hintText: "Enter your password here!",
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _handleSignIn,
                child: const Text("Sign In"),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/forgotPassword');
                    },
                    child: const Text("Forgot Password?"),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    icon: Icons.g_mobiledata,
                    label: "Google",
                    onTap: _handleGoogleSignIn,
                  ),
                  const SizedBox(width: 16),
                  CustomIconButton(
                    icon: Icons.facebook,
                    label: "Facebook",
                    onTap: _handleFacebookSignIn,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Not yet a member? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signUp');
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Theme.of(context).primaryColorDark,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
