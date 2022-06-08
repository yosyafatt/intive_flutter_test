import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intive_flutter_test/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/login-decoration.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(26.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),
                  const InputField(
                    label: 'Email',
                    hint: 'Your email or phone',
                  ),
                  const SizedBox(height: 32),
                  const InputField(
                    label: 'Password',
                    hint: 'Password',
                    isPassword: true,
                  ),
                  const SizedBox(height: 32),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed(Routes.MY_HISTORIES);
                      },
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          fixedSize: const Size(248, 60),
                          primary: const Color(0xFF5D5FEF)),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  final String hint;
  final bool isPassword;

  const InputField({
    Key? key,
    required this.label,
    required this.hint,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hint,
          ),
          obscureText: isPassword,
        ),
      ],
    );
  }
}
