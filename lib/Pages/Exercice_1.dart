import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Exo1 extends StatefulWidget {
  const Exo1({super.key});

  @override
  State<Exo1> createState() => _Exo1State();
}

class _Exo1State extends State<Exo1> {
  final GlobalKey<FormState> exercice = GlobalKey<FormState>();
  final number1Controller = TextEditingController();
  final number2Controller = TextEditingController();
  int inputText = 0;

  void onSubmit() {
    setState(() {
      inputText =
          int.parse(number1Controller.text) + int.parse(number2Controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercice 1'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Form(
        key: exercice,
        child: _exo1(context),
      ),
      key: UniqueKey(),
    );
  }

  Widget _exo1(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: number1Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Nombre 1",
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Seuls des nombres sont autorisés.
          ),
          TextFormField(
            controller: number2Controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Nombre 2",
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], // Seuls des nombres sont autorisés.
          ),
          ElevatedButton(
              onPressed: () {
                onSubmit();
              },
              child: const Text("Calculer")),
          Text(
            '$inputText',
            style: const TextStyle(
                color: Colors.cyan, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ]);
  }
}
