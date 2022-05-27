import 'package:flutter/material.dart';
export 'novoLugar.dart';

class NovoLugar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Novo Lugar'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  label: Text("Lugar"),
                  labelStyle: TextStyle(color: Colors.orange),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.orange,
                          width: 1,
                          style: BorderStyle.solid))),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  label: Text("Descrição"),
                  labelStyle: TextStyle(color: Colors.orange),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.orange)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.orange,
                          width: 1,
                          style: BorderStyle.solid))),
            ),
          ),
        ],
      ),
    );
  }
}
