import "package:flutter/material.dart";
export 'cadastro.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => {}),
        title: const Text('Novo Cadastro'),
        actions: [
          TextButton(
              onPressed: () => {},
              child: const Text(
                'Salvar',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
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
