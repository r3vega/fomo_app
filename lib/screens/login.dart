import 'package:flutter/material.dart';
import 'package:fomo/utils/utils.dart';
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
          const SizedBox(
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
                onPressed: () {
                  toScreen("/HOME");
                },
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 40),
                    child: TextButton(
                      onPressed: () {
                        print("pressed");
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.transparent)),
                      child: Image.asset(
                        "assets/images/gmail_logo.png",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 40),
                    child: TextButton(
                      onPressed: () {
                        print("pressed");
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.transparent)),
                      child: Image.asset(
                        "assets/images/facebook_logo.png",
                        fit: BoxFit.cover,
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 40),
                    child: TextButton(
                      onPressed: () {
                        print("pressed");
                      },
                      style: const ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.transparent)),
                      child: Image.asset(
                        "assets/images/apple_logo.png",
                        fit: BoxFit.fitHeight,
                        width: 60,
                        height: 60,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
