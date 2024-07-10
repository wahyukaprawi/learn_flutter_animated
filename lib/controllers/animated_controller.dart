import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController animatedC;

  @override
  void onInit() {
    super.onInit();
    animatedC = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void onClose() {
    animatedC.dispose();
    super.onClose();
  }
}
