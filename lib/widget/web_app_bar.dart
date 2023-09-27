import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFCDD0B5),
      title: Row(
        children: [
          Image.asset(
            'assets/logo2.jpeg',
            fit: BoxFit.contain,
            height: 60,
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded),
          ),
          SizedBox(width: 10),
          OutlinedButton(onPressed: (){},
            child: Text('cadastrar'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          OutlinedButton(onPressed: (){},
            child: Text('Entrar'),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
