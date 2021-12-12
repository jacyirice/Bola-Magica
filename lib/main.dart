import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BolaPage(),
      ),
    );

class BolaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pergunte-me Qualquer coisa!'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Bola(),
    );
  }
}

class Bola extends StatefulWidget {
  @override
  _BolaState createState() => _BolaState();
}

class _BolaState extends State<Bola> {
  int nrBola = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset("images/bola/$nrBola.png"),
        onPressed: () {
          setState(() {
            nrBola = Random().nextInt(5) + 1;
          });
        },
      ),
    );
  }
}
