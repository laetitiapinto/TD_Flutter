import 'package:flutter/material.dart';

class Exo4 extends StatefulWidget {
  const Exo4({super.key});

  @override
  State<Exo4> createState() => _Exo4State();
}

class _Exo4State extends State<Exo4> {
  String currentImage = 'images/chien.jpg';

  void onSubmit() {
    setState(() {
      currentImage = (currentImage == 'images/chien.jpg')
          ? 'images/chat.jpg'
          : 'images/chien.jpg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 4'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: _exo4(context),
      ),
      key: UniqueKey(),
    );
  }

  Widget _exo4(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(currentImage, width: 200, height: 200),
          ElevatedButton(
              onPressed: () {
                onSubmit();
              },
              child: const Text("Changer photo !"))
        ])
      ],
    );
  }
}
