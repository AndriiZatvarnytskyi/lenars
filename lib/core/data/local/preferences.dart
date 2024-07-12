import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  Future<String?> getUserPhone() async {
    final preferences = await SharedPreferences.getInstance();
    String? userPhone = preferences.getString('user_phone');
    return userPhone;
  }

  Future<void> removeUserPhone() async {
    final preferences = await SharedPreferences.getInstance();
    preferences.remove('user_phone');
  }

  Future<void> saveUserPhone(String userPhone) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString('user_phone', userPhone);
  }
}
