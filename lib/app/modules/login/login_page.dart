import 'package:dw3_pizza_delivery_app/app/components/pizza_delivery_button.dart';
import 'package:dw3_pizza_delivery_app/app/components/pizza_delivery_input.dart';
import 'package:dw3_pizza_delivery_app/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  static const String ROUTE_PAGE = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: Get.mediaQuery.size.width,
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 250,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    PizzaDeliveryInput(
                      label: 'E-mail',
                      validator: (String value) {
                        if (value == null || value.isBlank || !value.isEmail) {
                          return 'E-mail inválido!';
                        }
                        return null;
                      },
                    ),
                    Obx(
                      () => PizzaDeliveryInput(
                        label: 'Senha',
                        suffixIcon: Icon(FontAwesome.key),
                        suffixIconPressed: controller.showHidePassword,
                        obscureText: controller.obscureText,
                        validator: (String value) {
                          if (value.length < 6) {
                            return 'Senha deve conter no mínimo 6 caracteres.';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              PizzaDeliveryButton(
                onPressed: () {},
                label: 'Salvar',
                height: 50,
                width: Get.mediaQuery.size.width * .8,
                buttonColor: Get.theme.primaryColor,
                labelSize: 22,
                labelColor: Colors.white,
                // textStyle: TextStyle(fontSize: 18, color: Colors.green),
              ),
              SizedBox(height: 40),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Cadastre-se',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
