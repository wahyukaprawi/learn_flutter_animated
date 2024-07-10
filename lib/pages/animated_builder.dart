import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_animated/controllers/animated_controller.dart';

class AnimatedBuilderPage extends StatelessWidget {
  final c = Get.put(AnimatedController());
  AnimatedBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Builder'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: c.animatedC,
          child: Container(
            width: 200,
            height: 200,
            color: Theme.of(context).colorScheme.inversePrimary,
            child: const Center(
              child: Text('Whee!'),
            ),
          ),
          builder: (_, child) {
            return Transform.rotate(
              angle: c.animatedC.value * 2.0 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
