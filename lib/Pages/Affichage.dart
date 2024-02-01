import 'package:flutter/material.dart';
import 'package:myapp/Pages/API.dart';

class AffichageAPI extends StatefulWidget {
  const AffichageAPI({super.key});

  @override
  State<AffichageAPI> createState() => _AffichageAPIState();
}

class _AffichageAPIState extends State<AffichageAPI> {
  
  late Future<List> _user;
  @override
  void initState() {
    super.initState();
    _user = Utilisateur.getAllUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List>(
          future: _user,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              snapshot.data![index]['title'],
                              style: const TextStyle(fontSize: 20),
                            ),
                            Text(
                              snapshot.data![index]['body'],
                              style: const TextStyle(fontSize: 20),
                            ),
                          ]),
                    ));
                  });
            } else {
              return const Center(child: Text("Pas de données !"));
            }
          }),
    );
  }
}


