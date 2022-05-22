import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bússola'),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () => {}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {},
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('Lugar ${index + 1}'),
            trailing: Text('Pipipopo'),
          );
        },
      ),
    );
  }
}
