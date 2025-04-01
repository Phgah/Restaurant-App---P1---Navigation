import 'package:flutter/material.dart';
import 'package:food_app_demo/ widgets/custom_text_input.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _newPassController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  void _submit() {
    String newPass = _newPassController.text.trim();
    String confirmPass = _confirmPassController.text.trim();
    if (newPass.isEmpty || confirmPass.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Vui lòng nhập đủ thông tin!")),
      );
      return;
    }
    if (newPass != confirmPass) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Mật khẩu không khớp!")));
      return;
    }
    // Xử lý logic đổi password ở đây
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text("Đổi mật khẩu thành công!")));
    Navigator.pop(context); // Quay lại màn hình trước (Sign In)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forgot Password")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomTextInput(
                controller: _newPassController,
                labelText: "New Password",
                hintText: "Enter new password",
                obscureText: true,
              ),
              const SizedBox(height: 16),
              CustomTextInput(
                controller: _confirmPassController,
                labelText: "Confirm Password",
                hintText: "Re-enter new password",
                obscureText: true,
              ),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _submit, child: const Text("Submit")),
            ],
          ),
        ),
      ),
    );
  }
}
