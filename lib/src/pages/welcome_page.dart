import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home',
          style: TextStyle(color: Colors.white),),
      ),
      body: const Center(
        child: Text('¡Bienvenide!',
          style: TextStyle(
            fontSize: 48,
            color: Colors.greenAccent,
          ),),
      ),
    );
  }
}
