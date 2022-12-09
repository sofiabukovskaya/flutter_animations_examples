import 'package:flutter/material.dart';

class ExampleSix extends StatefulWidget {
  const ExampleSix({Key? key}) : super(key: key);

  @override
  State<ExampleSix> createState() => _ExampleSixState();
}

class _ExampleSixState extends State<ExampleSix>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..forward();

    _animation = Tween<Offset>(
      begin: const Offset(-0.5, 0.0),
      end: const Offset(0.5, 0.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Six'),
      ),
      body: Center(
        child: SlideTransition(
          position: _animation,
          transformHitTests: true,
          textDirection: TextDirection.ltr,
          child: const Text(
            'I just moving',
            style: TextStyle(color: Colors.purple, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
