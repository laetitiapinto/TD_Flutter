import 'package:flutter/material.dart';

class Exo2 extends StatefulWidget {
  const Exo2({super.key});

  @override
  State<Exo2> createState() => _Exo2State();
}

class _Exo2State extends State<Exo2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 2'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [_exo2(context)],
      ),
      key: UniqueKey(),
    );
  }

  Widget _exo2(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        padding: const EdgeInsets.all(50),
        child: const Image(image: AssetImage("images/chien.jpg")),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        child: const Text("Ceci est un chien"),
      )
    ]);
  }
}
