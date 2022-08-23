import 'package:flutter/material.dart';

import 'package:tela_login/controller/home_controller.dart';
import 'package:tela_login/repositories/home_repository_imp.dart';
import 'package:tela_login/service/prefs_service.dart';

import '../Model/post_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());
  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 26, 34, 75),
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/login', (route) => true);
              },
              icon: const Icon(Icons.keyboard_double_arrow_right_sharp)),
        ],
        title: const Text('Notícias'),
        centerTitle: true,
      ),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller.posts,
        builder: (_, list, __) {
          return ListView.separated(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              leading: Text(list[idx].id.toString()),
              trailing: const Icon(Icons.arrow_forward),
              title: Text(list[idx].title),
              onTap: () => Navigator.of(context)
                  .pushNamed('/details', arguments: list[idx]),
            ),
            separatorBuilder: (_, __) => const Divider(),
          );
        },
      ),
    );
  }
}
