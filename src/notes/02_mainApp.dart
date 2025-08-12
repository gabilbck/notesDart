import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      home: Scaffold(
        appBar: AppBar(title: Text('Meu App')),
        body: Center(child: Text('Olá, este é o Meu App!')),
      ),
    );
  }
}
