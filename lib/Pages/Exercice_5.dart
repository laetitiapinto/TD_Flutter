import 'package:flutter/material.dart';
import 'package:myapp/Pages/Exercice_5_bis.dart';
import 'package:myapp/models/Jeux.dart';

class Exo5 extends StatefulWidget {
  const Exo5({super.key});

  @override
  State<Exo5> createState() => _Exo5State();
}

class _Exo5State extends State<Exo5> {
  List<Jeux> jeux = [
    Jeux("Zelda tears of the kingdom", "/images/Zelda_tears_of_the_kingdoms.jpg"),
    Jeux("Zelda breath of the wild", "/images/Zelda_breath_of_the_wild.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 5'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        child: _exo5(context),
      ),
      key: UniqueKey(),
    );
  }

  Widget _exo5(BuildContext context) {
    return ListView.builder(
        itemCount: jeux.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(jeux[index].nom),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Exo5Bis(jeu: jeux[index])),
                );
              });
        });
  }
}
