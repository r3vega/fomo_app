import 'package:flutter/material.dart';
import 'package:fomo/controllers/app_controller.dart';
import 'package:fomo/models/models.dart';
import 'package:fomo/utils/utils.dart';
import 'package:fomo/widgets/widgets.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: TextButtonWidget(
                text: "Registrarse",
                onPressed: () async {
                  await AppController.to.getBootstrapRequest();
                  toScreen(AppController.to.getInitialRoute());
                },
              )),
        ],
      ),
    );
  }
  }