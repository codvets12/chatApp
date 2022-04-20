import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? uid;
  final String name;
  final String password;
  UserModel({required this.name, required this.password, this.uid});
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'], password: json['password'], uid: json['uid']);
  Map<String, dynamic> tojson() =>
      {'name': name, 'password': password, 'uid': uid};
}
