import 'package:flutter/material.dart';
import 'package:flutterweb/widgets/navigation_bar/navigation_bar_mobile.dart';
import 'package:flutterweb/widgets/navigation_bar/navigation_bar_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
class NavigatBar extends StatelessWidget {
  const NavigatBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}