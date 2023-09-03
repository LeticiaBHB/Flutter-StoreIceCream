import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ScreenTypeLayout(
        mobile: HomeContentMobile(),
        desktop: HomeContentDesktop(),
      ),
    );
  }
}
