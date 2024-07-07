import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_flutter_animated/pages/animated_align.dart';
import 'package:learn_flutter_animated/pages/animated_container.dart';

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
          ],
        ),
      ),
    );
  }
}
