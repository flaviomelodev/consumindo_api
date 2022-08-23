import 'package:flutter/material.dart';
import 'package:tela_login/components/custom_login_button.dart';
import 'package:tela_login/controller/login_controller.dart';
import 'package:tela_login/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  // ignore: prefer_final_fields
  LoginController _controller = LoginController();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(255, 26, 34, 75),
                Color.fromARGB(255, 40, 97, 189),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/newspaper.png',
              width: 200,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 8),
              child: CustomTextFieldWidget(
                  onChaged: _controller.setLogin, label: 'Login'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 8),
              child: CustomTextFieldWidget(
                onChaged: _controller.setPass,
                label: 'Senha',
                obscureText: true,
              ),
            ),
            const SizedBox(height: 20),
            CustomButtonLogin(loginController: _controller),
          ],
        ),
      ),
    );
  }
}
