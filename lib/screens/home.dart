import 'package:flutter/material.dart';
import 'package:ulama_training/models/schemas.dart';
import 'package:ulama_training/realm.dart';
import 'package:ulama_training/screens/new_training.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var realm = useRealm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: StreamBuilder(
        stream: realm.all<Training>().changes,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final results = snapshot.data?.results;
            return ListView.builder(
                itemCount: results == null ? 0 : results.length,
                itemBuilder: (context, index) {
                  final data = results?[index];
                  return ListTile(
                    title: Text(data!.name),
                    onLongPress: () {},
                  );
                });
          }
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewTrainingScreen(),
            ),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
