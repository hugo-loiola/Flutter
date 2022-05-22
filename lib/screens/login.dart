import 'package:flutter/material.dart';

export 'login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(Icons.compass_calibration_rounded, size: 72, color: Colors.blue),
        Text('Bússola', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Email')),
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(border: UnderlineInputBorder(), label: Text('Senha')),
        ),
        Padding(
            padding: EdgeInsets.only(top: 24),
            child: ElevatedButton(
              child: Text('Entrar'),
              onPressed: () => {},
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ))
      ]),
    );
  }
}