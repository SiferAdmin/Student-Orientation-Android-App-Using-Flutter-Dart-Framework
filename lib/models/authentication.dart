import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Authentication with ChangeNotifier {
  void signUp(String email, String password) async {
    const url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithCustomToken?key=AIzaSyDBGUlhdRiHG5wedepVCe8DAEb-T3rxIhA';
    final response = await http.post(Uri.parse(url),
        body: json.encode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }));
    // ignore: unused_local_variable
    final responseData = json.decode(response.body);
    // print(responseData);
  }
}
