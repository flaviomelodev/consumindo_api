import 'package:flutter/material.dart';
import 'package:tela_login/pages/details_page.dart';
import 'package:tela_login/pages/home_page.dart';
import 'package:tela_login/pages/splash_page.dart';

import 'pages/login_page.dart';

void main() => runApp(const TelaLogin());

class TelaLogin extends StatelessWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/home': (_) => const HomePage(),
        '/details': (_) => const DetailsPage(),
      },
    );
  }
}
