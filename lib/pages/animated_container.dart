import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            setState(() {
              isClick = !isClick;
            });
          },
          child: AnimatedContainer(
            duration: const Duration(
              seconds: 2,
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(20)),
            width: isClick ? 300 : 100,
            height: isClick ? 100 : 400,
            curve: Curves.fastOutSlowIn,
            padding: const EdgeInsets.all(10),
            alignment: isClick ? Alignment.centerRight : Alignment.topCenter,
            child: const Icon(
              Icons.apple,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
