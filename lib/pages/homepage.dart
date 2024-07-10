import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/pages/animated_align.dart';
import '/pages/animated_container.dart';
import '/pages/animated_crossfade.dart';
import '/pages/animated_opacity.dart';

import 'animated_positioned.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.to(
                () => const AnimatedContainerPage(),
              ),
              child: const Text('Animated Container'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                () => const AnimatedAlignPage(),
              ),
              child: const Text('Animated Align'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                () => const AnimatedCrossfadePage(),
              ),
              child: const Text('Animated Cross Fade'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                () => const AnimatedOpacityPage(),
              ),
              child: const Text('Animated Opacity'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Get.to(
                () => const AnimatedPositionedPage(),
              ),
              child: const Text('Animated Positioned'),
            ),
          ],
        ),
      ),
    );
  }
}
