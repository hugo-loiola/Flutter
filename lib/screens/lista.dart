import "package:flutter/material.dart";
export 'lista.dart';

class Lista extends StatelessWidget {
  Lista({Key? key}) : super(key: key);

  final List dummyList = List.generate(100, (index) {
    return {
      "id": index,
      "title": "Esse é o título $index",
      "subtitle": "esse é o subtítulo $index"
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: const Text('Bússola'),
        actions: [
          IconButton(
              icon: const Icon(Icons.exit_to_app),
              onPressed: () => {Navigator.pushReplacementNamed(context, "/")}),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.orange,
        onPressed: () => {},
      ),
      body: SafeArea(
        child: ListView.builder(
            itemBuilder: (context, index) => Card(
                  elevation: 6,
                  margin: EdgeInsets.all(16),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(dummyList[index]['id'].toString()),
                      backgroundColor: Colors.indigo,
                    ),
                    title: Text(dummyList[index]["title"]),
                    subtitle: Text(dummyList[index]['subtitle']),
                    trailing: Icon(Icons.add_a_photo),
                  ),
                )),
      ),
    );
  }
}
