import 'package:flutter/material.dart';
import 'package:tarea_2_login/src/utils/routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final formKey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Andresito\'s App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/ing-sistemas.png'),
              ),
              Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: userController,
                          decoration: const InputDecoration(
                            label: Text('Usuario'),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) return 'Usuario vacío';
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text('Contraseña'),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) return 'Contraseña vacía';
                            return null;
                          },
                        ),
                      ],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: ElevatedButton(
                  onPressed: () {
                    final bool validity =
                        userController.text == 'aparedess@unah.hn' &&
                            passwordController.text == '20192030434';
                    if (formKey.currentState!.validate() && validity) {
                      Navigator.pushNamed(context, MyRoutes.welcome.name);
                    } else {
                      final snackBar = SnackBar(
                        content: const Text('Credenciales incorrectas'),
                        action: SnackBarAction(
                          label: 'Okay',
                          onPressed: () {},
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                  child: const Text('Ingresar'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
