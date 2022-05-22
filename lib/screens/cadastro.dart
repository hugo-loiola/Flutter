import "package:flutter/material.dart";
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () => {}),
        title: Text('Novo Cadastro'),
        actions: [
          TextButton(
              onPressed: () => {},
              child: Text(
                'Salvar',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), label: Text('Email')),
          ),
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), label: Text('Telefone')),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), label: Text('Senha')),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), label: Text('Confirmar Senha')),
          ),
        ],
      ),
    );
  }
}
