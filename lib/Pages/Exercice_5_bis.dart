import 'package:flutter/material.dart';
import 'package:myapp/models/Jeux.dart';

class Exo5Bis extends StatelessWidget {
  final Jeux jeu;
  const Exo5Bis({super.key, required this.jeu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World!'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: AssetImage(jeu.image)),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Retour"),
          ),
        ],
      ),
    );
  }
}
