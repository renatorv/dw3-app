import 'package:get/get.dart';
import 'package:flutter/material.dart';

mixin LoaderMixin on GetxController {
  // aula 4 1h2min
  void loaderListener(RxBool loading) {
    ever(loading, (_) async {
      if (loading.isTrue) {
        await Get.dialog(
          Center(
            child: CircularProgressIndicator(),
          ),
          barrierDismissible: false,
        );
      } else {
        Get.back();
      }
    });
  }
}
