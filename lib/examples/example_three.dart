import 'package:flutter/material.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Color?> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 4000,
      ),
    );

    _animation = ColorTween(
      begin: Colors.red,
      end: Colors.green,
    ).animate(_controller);


    _animation.addListener(
      () {
        print('animation listener works!!!!!');
      },
    );

    _animation.addStatusListener(
      (status) {
        print('animation status $status');
      },
    );
    _controller.forward();
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
        title: const Text('Example Three'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (BuildContext context, Widget? child) => Container(
            height: 300,
            width: 300,
            color: _animation.value,
          ),
        ),
      ),
    );
  }
}
