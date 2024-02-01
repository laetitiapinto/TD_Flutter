import 'package:flutter/material.dart';
import 'package:myapp/Pages/Affichage.dart';

import 'package:myapp/Pages/Exercice_2.dart';
import 'package:myapp/Pages/Exercice_1.dart';
import 'package:myapp/Pages/Exercice_3.dart';
import 'package:myapp/Pages/Exercice_4.dart';
import 'package:myapp/Pages/Exercice_5.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

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
          Row(
            children: [
              Container(
                color: Colors.purple,
                padding: const EdgeInsets.all(10),
                child: const Text("data ligne"),
              ),
              Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(10),
                child: const Text("data ligne"),
              ),
              Container(
                color: Colors.green,
                padding: const EdgeInsets.all(10),
                child: const Text("data ligne"),
              ),
            ],
          ),
          Container(
            color: Colors.red,
            padding: const EdgeInsets.all(10),
            child: const Text("data ligne"),
          ),
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(10),
            child: const Text("data ligne"),
          ),
          Container(
            color: Colors.green,
            padding: const EdgeInsets.all(10),
            child: const Text("data ligne"),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Exo1()));
                  },
                  child: const Text("Exercice 1")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Exo2()));
                  },
                  child: const Text("Exercice 2")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Exo3()));
                  },
                  child: const Text("Exercice 3")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Exo4()));
                  },
                  child: const Text("Exercice 4")),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Exo5()));
                },
                child: const Text("Exercice 5"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const AffichageAPI()));
                },
                child: const Text("API"),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
