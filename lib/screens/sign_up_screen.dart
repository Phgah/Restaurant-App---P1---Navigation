import 'package:flutter/material.dart';
import 'package:food_app_demo/ widgets/custom_text_input.dart';
import 'package:food_app_demo/auth_data.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passController = TextEditingController();

//   void _handleSignUp() {
//     if (_emailController.text.isNotEmpty && _passController.text.isNotEmpty) {
//       ScaffoldMessenger.of(
//         context,
//       ).showSnackBar(const SnackBar(content: Text("Đăng ký thành công!")));
//       Navigator.pop(context); // Quay lại Sign In
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Vui lòng nhập đầy đủ thông tin!")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Sign Up")),
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               CustomTextInput(
//                 controller: _emailController,
//                 labelText: "Email",
//                 hintText: "Enter your email",
//               ),
//               const SizedBox(height: 16),
//               CustomTextInput(
//                 controller: _passController,
//                 labelText: "Password",
//                 hintText: "Enter your password",
//                 obscureText: true,
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 onPressed: _handleSignUp,
//                 child: const Text("Sign Up"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  void _handleSignUp() {
    String email = _emailController.text.trim();
    String password = _passController.text.trim();

    if (email.isNotEmpty && password.isNotEmpty) {
      // Cập nhật thông tin đăng nhập mới vào AuthData
      AuthData.email = email;
      AuthData.password = password;

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Đăng ký thành công!")));
      Navigator.pop(context); // Quay lại Sign In
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Vui lòng nhập đầy đủ thông tin!")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextInput(
                controller: _emailController,
                labelText: "Email",
                hintText: "Enter your email",
              ),
              const SizedBox(height: 16),
              CustomTextInput(
                controller: _passController,
                labelText: "Password",
                hintText: "Enter your password",
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _handleSignUp,
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
