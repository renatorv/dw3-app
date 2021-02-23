import 'package:dw3_pizza_delivery_app/app/config/application_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/config/ui_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UiConfig.appTheme,
      getPages: UiConfig.routes,
      initialBinding: ApplicationBindings(),
    );
  }
}
