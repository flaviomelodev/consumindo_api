import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tela_login/repositories/home_repository.dart';

import '../Model/post_model.dart';

//Serve apenas para teste. Depois utiliza a HomeRepositoryImp que é a com
//toda a API

class HomeRepositoryMock extends HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    //identifica tudo que está dentro de assets
    var value = await rootBundle.loadString('assets/data.json');
    List postJson = jsonDecode(value);
    return postJson.map((e) => PostModel.fromJson(e)).toList();
  }
}
