import 'package:tela_login/repositories/home_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';
import '../Model/post_model.dart';

class HomeRepositoryImp extends HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List).map((e) => PostModel.fromJson(e)).toList();
    } catch (e) {
      // ignore: avoid_print
      print(e);
    }
    return [];
  }
}
