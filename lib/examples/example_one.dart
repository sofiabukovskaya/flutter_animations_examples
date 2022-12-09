import 'package:flutter/material.dart';

class ExampleOne extends StatefulWidget {
  ExampleOne({Key? key}) : super(key: key);

  @override
  State<ExampleOne> createState() => _ExampleOneState();
}

class _ExampleOneState extends State<ExampleOne> {
  bool isVisible = true;
  double isOpacity = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example one'),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedOpacity(
              opacity: isOpacity,
              duration: const Duration(seconds: 2),
              child: const Text('Unexpectable appearing 😎'),
            ),
            const SizedBox(
              height: 5,
            ),
            AnimatedSwitcher(
              duration: const Duration(seconds: 2),
              child: isVisible
                  ? Container(
                      key: UniqueKey(),
                      height: 300,
                      width: 300,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          'I love Flutter animations',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  : Container(
                      key: UniqueKey(),
                      height: 300,
                      width: 300,
                      color: Colors.purple,
                      child: const Center(
                        child: Text(
                          'I love Flutter animations too!',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              isVisible = !isVisible;
              isOpacity = isOpacity == 0 ? 1 : 0;
            },
          );
        },
      ),
    );
  }
}
