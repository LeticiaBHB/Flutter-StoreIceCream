import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({super.key});

  @override
  State<Orientacao> createState() => _OrientacaoState();
}

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('orientação')),
      body: OrientationBuilder(
        builder: (context, orientacao){
          // return Container(
          //   child: orientacao == Orientation.portrait ? Text('portrait') : Text('landscape'), // celular é pé: portrait, celular deitado: landscape
          // );
        return GridView.count(
        crossAxisCount: orientacao == Orientation.portrait ? 2 :4,
        children: [
          Container(color: Colors.tealAccent),
          Container(color: Colors.brown),
          Container(color: Colors.white),
          Container(color: Colors.green),
          Container(color: Colors.red),
          Container(color: Colors.amberAccent),
          Container(color: Colors.pink),
        ],
        );
        }
      ),
    );
  }
}
