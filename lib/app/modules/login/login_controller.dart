import 'package:dw3_pizza_delivery_app/app/repositories/user_repository.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final UserRepository _repository;

  LoginController(this._repository);

  final _obscureText = true.obs;

  get obscureText => _obscureText.value;

  void showHidePassword() => _obscureText.toggle();

  void login(String email, String password) async {
    try {
      final user = await _repository.login(email, password);
      final sp = await SharedPreferences.getInstance();
      await sp.setString('user', user.toJson());
    } catch (e) {
      // TODO
      print(e);
    }
  }
}
