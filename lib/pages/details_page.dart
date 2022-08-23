import 'package:flutter/material.dart';

import 'package:tela_login/Model/post_model.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PostModel args = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 34, 75),
        title: Text(args.title),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          children: [
            Text(
              args.title,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 24),
            Text(
              'Notícias: ${args.body}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Autor : ${args.userId}',
              style: const TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
