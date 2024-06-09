import 'package:flutter/material.dart';
import 'package:ulama_training/models/schemas.dart';
import 'package:ulama_training/realm.dart';

class NewTrainingScreen extends StatefulWidget {
  const NewTrainingScreen({super.key});

  @override
  State<NewTrainingScreen> createState() => _NewTrainingScreenState();
}

class _NewTrainingScreenState extends State<NewTrainingScreen> {
  var realm = useRealm();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nuevo Entrenamiento"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (String value) {
                name = value;
              },
              decoration: const InputDecoration(labelText: "Nombre"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          realm.write(() {
            realm.add(Training(name));
          });
          Navigator.pop(context);
        },
        icon: const Icon(Icons.save),
        label: const Text("Crear"),
      ),
    );
  }
}
