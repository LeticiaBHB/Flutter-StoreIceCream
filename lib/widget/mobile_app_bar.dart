import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFCDD0B5),
      title: Image.asset('assets/logo2.jpeg',
      fit: BoxFit.contain,
        height: 60,
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart_rounded),
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert),
        ),
      ],
    );
  }
}
