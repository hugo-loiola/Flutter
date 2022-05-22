import 'package:flutter/material.dart';

export 'login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(Icons.compass_calibration_rounded,
            size: 72, color: Colors.blue),
        const Text('Bússola',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), label: Text("Email")),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                border: UnderlineInputBorder(), label: Text("Senha")),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
              child: const Text('Entrar'),
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
            ))
      ]),
    );
  }
}
