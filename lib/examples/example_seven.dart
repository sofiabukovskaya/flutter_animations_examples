import 'package:flutter/material.dart';

class ExampleSeven extends StatefulWidget {
  const ExampleSeven({Key? key}) : super(key: key);

  @override
  State<ExampleSeven> createState() => _ExampleSevenState();
}

class _ExampleSevenState extends State<ExampleSeven>
    with SingleTickerProviderStateMixin {

  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    animation = Tween(begin: 10.0, end: 20.0)
        .chain(
          TweenSequence(
            [
              TweenSequenceItem(tween: Tween(begin: 20.0, end: 5.0), weight: 1),
              TweenSequenceItem(tween: Tween(begin: 5.0, end: 10.0), weight: 1),
            ],
          ),
        )
        .animate(controller);

    controller.addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      },
    );
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
        title: const Text('Example Seven'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget? child) => Icon(
            Icons.ac_unit_outlined,
            color: Colors.indigo,
            size: animation.value,
          ),
        ),
      ),
    );
  }
}
