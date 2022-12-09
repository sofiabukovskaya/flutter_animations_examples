import 'package:flutter/material.dart';

class ExampleEight extends StatefulWidget {
  const ExampleEight({Key? key}) : super(key: key);

  @override
  State<ExampleEight> createState() => _ExampleEightState();
}

class _ExampleEightState extends State<ExampleEight>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.easeInOut);

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Eight'),
      ),
      body: Center(
        child: RotationTransition(
          turns: animation,
          child: InkWell(
            onTap: () {
              controller.forward();
            },
            child: const Icon(
              Icons.people,
              color: Colors.greenAccent,
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
