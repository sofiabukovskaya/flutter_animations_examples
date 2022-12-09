import 'package:animations_example/examples/example_eight.dart';
import 'package:animations_example/examples/example_five.dart';
import 'package:animations_example/examples/example_four.dart';
import 'package:animations_example/examples/example_seven.dart';
import 'package:animations_example/examples/example_six.dart';
import 'package:animations_example/examples/example_two.dart';
import 'package:flutter/material.dart';

import 'examples/example_one.dart';
import 'examples/example_three.dart';

class ListOfExamples extends StatelessWidget {
  const ListOfExamples({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ExampleOne(),
              ),
            ),
            child: const Text('Example #1'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExampleTwo(),
              ),
            ),
            child: const Text('Example #2'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExampleThree(),
              ),
            ),
            child: const Text('Example #3'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExampleFour(),
              ),
            ),
            child: const Text('Example #4'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExampleFive(),
              ),
            ),
            child: const Text('Example #5'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExampleSix(),
              ),
            ),
            child: const Text('Example #6'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExampleSeven(),
              ),
            ),
            child: const Text('Example #7'),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ExampleEight(),
              ),
            ),
            child: const Text('Example #8'),
          ),
        ],
      ),
    );
  }
}
