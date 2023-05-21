import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';

class Auth with ChangeNotifier {
  String? _token ;
  DateTime? _expiryDate ;
  String? _userId ;

  bool get isAuth {
    return token != null;
  }

  String? get token {
    if (_expiryDate != null &&
        _expiryDate!.isAfter(DateTime.now()) &&
        _token != null) {
      return _token;
    }return null;
  }

  Future<void> _authenticate(
      String email, String password, String urlSegment) async {
    final url =
        "https://identitytoolkit.googleapis.com/v1/accounts:$urlSegment?key=AIzaSyBUlQvZ5Q8ZZ1mB5kfB0McH6O6MpgCA_DE";
    try {
      final res = await http.post(Uri.parse(url),
          body: json.encode({
            'email': email,
            'password': password,
            'returnSecureToken': true
          }));
      final resData = json.decode(res.body);
      if (resData['error'] != null) {
        throw "${resData['error']['message']}";
      }
      _token = resData['idToken'];
      _userId = resData['localId'];
      _expiryDate =
          DateTime.now().add(Duration(
              seconds: int.parse(resData['expiresIn'])));
           notifyListeners();
    } catch (e) {
      throw e;
    }
  }

  Future<void> signUp(String email, String password) async {
    return _authenticate(email, password, "signUp");
  }

  Future<void> login(String email, String password) async {
    return _authenticate(email, password, "signInWithPassword");
  }
}
