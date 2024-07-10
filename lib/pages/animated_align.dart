import 'package:flutter/material.dart';

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({super.key});

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            setState(() {
              isClick = !isClick;
            });
          },
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(20)),
            width: 300,
            height: 100,
            padding: const EdgeInsets.all(10),
            child: AnimatedAlign(
              alignment: isClick ? Alignment.centerLeft : Alignment.centerRight,
              duration: const Duration(
                seconds: 2,
              ),
              child: const Icon(
                Icons.apple,
                size: 40,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
