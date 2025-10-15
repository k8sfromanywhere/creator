import 'package:firebase_auth/firebase_auth.dart';

final class UserModel {
  final String uid;
  final String email;

  UserModel({required this.uid, required this.email});

  factory UserModel.fromFirebase(User user) {
    return UserModel(uid: user.uid, email: user.email ?? '');
  }

  Map<String, dynamic> toMap() => {'uid': uid, 'email': email};

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(uid: map['uid'] as String, email: map['email'] as String);
  }
}
