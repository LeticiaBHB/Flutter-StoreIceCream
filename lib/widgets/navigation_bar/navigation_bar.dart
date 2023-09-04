import 'package:flutter/material.dart';

class NavigatBar extends StatelessWidget {
  const NavigatBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: 80,
          width: 150,
          child: Image.asset('assets/logo.png'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/episodes'); // Certifique-se de que 'episodes' é uma rota válida.
          },
          child: Text('Episodes'),
        ),
        SizedBox(width: 60),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/AboutView'); // Certifique-se de que 'episodes' é uma rota válida.
          },
          child: Text('About'),
        ), // Certifique-se de que 'EpisodesRoute' é um widget válido.
      ],
    );
  }
}
