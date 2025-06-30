/*
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://api.escuelajs.co/api/v1'));

  Future<List<dynamic>> fetchUsers() async {
    final response = await _dio.get('/users');
    print(response.data);
    return response.data;
  }


}
*/

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../usermodel.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'https://api.escuelajs.co/api/v1'));

  Future<List<UserModel>> fetchUsers() async {
    final response = await _dio.get('/users');
    final List data = response.data;
    return data.map((json) => UserModel.fromJson(json)).toList();
  }

   authenticateUser() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: "email@gmail.com", password: "password");
  }

}

