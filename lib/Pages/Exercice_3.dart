import 'package:flutter/material.dart';
import 'package:myapp/models/Personne.dart';

class Exo3 extends StatefulWidget {
  const Exo3({super.key});

  @override
  State<Exo3> createState() => _Exo3State();
}

class _Exo3State extends State<Exo3> {
  List<Personne> list = [
    Personne("Pinto", "Laetitia", "lpinto@example.com"),
    Personne("Sio", "BTS", "bsio@example.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 4'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: _exo3(context),
      ),
      key: UniqueKey(),
    );
  }

  Widget _exo3(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            height: 40,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            // color: Colors.amberAccent,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1)),
            child: Text(list[index].getInfo()),
          );
        });
  }
}
