// Classe que sempre é executada antes da rota ser carregada
// assim deve-se adicionar as dependências que a tela precisa
// dentro do gerenciador de dependência do Getx

import 'package:dw3_pizza_delivery_app/app/modules/splash/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
