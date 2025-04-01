import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  void _handleSignOut(BuildContext context) {
    // Sign out -> Quay về màn hình sign in
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blueGrey[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header
            const CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                "https://i.pravatar.cc/150?img=3", // avatar demo
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Hung Nguyen",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text("Mobile developer"),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                "I have above 5 years of experience in native mobile apps development, now I am learning React Native",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => _handleSignOut(context),
              child: const Text("Sign Out"),
            ),
          ],
        ),
      ),
    );
  }
}
