import 'package:flutter/material.dart';
import 'package:fomo/widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String user = "";
  String pass = "";
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Text(
              // Cambiar por una imagen???
              "FOMO",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                "Bienvenido",
                style: Theme.of(context).textTheme.titleLarge,
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFieldWidget(
              onChanged: (str) {
                user = str;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextFieldWidget(
              isPassword: true,
              onChanged: (str) {
                pass = str;
              },
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: TextButtonWidget(
                text: "Iniciar sesión",
                onPressed: () {},
              )),
        ],
      ),
    );
  }
}
