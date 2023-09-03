import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/widgets/navigation_bar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu)
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}
