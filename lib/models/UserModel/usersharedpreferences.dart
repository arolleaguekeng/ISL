///After the authentification
///J'utilise cette classe pour enregistrer le token dans le telephoen en l'utilisateur
///ainsi quand il ouvrira l'app pour une prochaine fois il n'aura pas besoin de se reconnecter
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  Future<String> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String value = prefs.getString("userToken")!;
    return value;
  }

  Future<bool> saveToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString("userToken", token);
    return true;
  }

  static saveUserToSharedPreference(Map<String, dynamic> data) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setString('currentUser', jsonEncode(data));
    print('.........................LOGING...................');
    return prefs.commit();
  }

  static removeUserToSharedPreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove("currentUser");
    print('..............REMOVE.............');
  }
}
