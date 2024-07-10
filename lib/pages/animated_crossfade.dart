import 'package:flutter/material.dart';

class AnimatedCrossfadePage extends StatefulWidget {
  const AnimatedCrossfadePage({super.key});

  @override
  State<AnimatedCrossfadePage> createState() => _AnimatedCrossfadePageState();
}

class _AnimatedCrossfadePageState extends State<AnimatedCrossfadePage> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Crossfade'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AnimatedCrossFade(
              firstChild: Container(
                width: 50,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              secondChild: Container(
                width: 150,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              crossFadeState: isClick
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(
                seconds: 2,
              ),
              firstCurve: Curves.fastOutSlowIn,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isClick = !isClick;
          });
        },
        child: const Icon(Icons.animation),
      ),
    );
  }
}
