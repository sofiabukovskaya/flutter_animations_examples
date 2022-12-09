import 'package:flutter/material.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example two Hero'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20.0,
            ),
            ListTile(
              leading: GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Scaffold(
                      appBar: AppBar(
                        leading: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                      body: Center(
                        child: Hero(
                          tag: 'hero_tag',
                          child: Image.asset('assets/meme.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                child: const Hero(
                  tag: 'hero_tag',
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/meme.png'),
                  ),
                ),
              ),
              title: const Text(
                'Tap to see whole meme 😏',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
