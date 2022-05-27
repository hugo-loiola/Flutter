import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  const Lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text('Bússola'),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () => {Navigator.pushReplacementNamed(context, "/")}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.orange),
        onPressed: () => {},
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('Lugar ${index + 1}'),
            trailing: const Text('Pipipopo'),
          );
        },
      ),
    );
  }
}
