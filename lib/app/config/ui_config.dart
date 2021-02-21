import 'package:dw3_pizza_delivery_app/app/modules/home/home_bindigs.dart';
import 'package:dw3_pizza_delivery_app/app/modules/home/home_page.dart';
import 'package:dw3_pizza_delivery_app/app/modules/login/login_bindings.dart';
import 'package:dw3_pizza_delivery_app/app/modules/login/login_page.dart';
import 'package:dw3_pizza_delivery_app/app/modules/splash/splash_bindings.dart';
import 'package:dw3_pizza_delivery_app/app/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UiConfig {
  UiConfig._(); //Construtor Nomeado Privado - impede que essa classe seja instanciada

  static final appTheme = ThemeData(
    primaryColor: Color(0xFF9D0000),
    primarySwatch: Colors.red,
  );

  static final routes = <GetPage>[
    GetPage(
      name: SplashPage.ROUTE_PAGE,
      page: () => SplashPage(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: HomePage.ROUTE_PAGE,
      page: () => HomePage(),
      binding: HomeBindigs(),
    ),
    GetPage(
      name: LoginPage.ROUTE_PAGE,
      page: () => LoginPage(),
      binding: LoginBindings(),
    ),
  ];
}
