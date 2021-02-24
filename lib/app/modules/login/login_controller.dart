import 'package:dw3_pizza_delivery_app/app/helpers/loader_mixin.dart';
import 'package:dw3_pizza_delivery_app/app/helpers/messages_mixin.dart';
import 'package:dw3_pizza_delivery_app/app/modules/splash/splash_page.dart';
import 'package:dw3_pizza_delivery_app/app/repositories/user_repository.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final UserRepository _repository;

  LoginController(this._repository);

  final _obscureText = true.obs;

  final loading = false.obs;

  final message = Rx<MessageModel>();

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  get obscureText => _obscureText.value;

  void showHidePassword() => _obscureText.toggle();

  void login(String email, String password) async {
    try {
      loading(true);

      final user = await _repository.login(email, password);

      final sp = await SharedPreferences.getInstance();

      await sp.setString('user', user.toJson());

      loading(false);

      Get.offAllNamed(SplashPage.ROUTE_PAGE);
    } catch (e) {
      // TODO
      print(e);
    }
  }
}
