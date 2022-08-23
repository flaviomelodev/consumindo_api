import 'package:flutter/material.dart';

import 'package:tela_login/controller/login_controller.dart';

class CustomButtonLogin extends StatelessWidget {
  final LoginController loginController;
  const CustomButtonLogin({Key? key, required this.loginController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: loginController.inLoader,
        builder: (_, inLoader, __) => inLoader
            ? const CircularProgressIndicator()
            : ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  loginController.auth().then((result) {
                    if (result) {
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Erro ao realizar Login.'),
                          duration: Duration(seconds: 5)));
                    }
                  });
                },
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 26, 34, 75),
                  ),
                ),
              ));
  }
}
