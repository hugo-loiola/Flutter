import 'package:flutter/material.dart';

export 'login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(Icons.compass_calibration_rounded,
            size: 72, color: Colors.orange),
        const Text('Bússola',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.orange, width: 1, style: BorderStyle.solid),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.orange,
                        width: 1,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                label: Text("Email"),
                labelStyle: TextStyle(color: Colors.orange)),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16),
          child: TextField(
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.orange,
                        width: 1.0,
                        style: BorderStyle.solid)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.orange, width: 1, style: BorderStyle.solid),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                label: Text("Senha"),
                labelStyle: TextStyle(color: Colors.orange)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
              child: const Text("Entrar"),
              onPressed: () =>
                  {Navigator.pushReplacementNamed(context, "/home")},
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
            )),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: ElevatedButton(
            child: Text("Cadastre-se"),
            onPressed: () => {Navigator.pushNamed(context, "/cadastro")},
            style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
                textStyle:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ),
        ),
      ]),
    );
  }
}
