import 'package:firebase_auth/firebase_auth.dart';

abstract class IUserService {
  Future<User> connect(User user);
  Future<List<User>> online();
  Future<void> disconnect(User user);
  Future<User> fetch(String id);
}
