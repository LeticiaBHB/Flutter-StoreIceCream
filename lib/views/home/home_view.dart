import 'package:flutter/material.dart';
import 'package:flutterweb/widgets/centered_view/centered_view.dart';
import 'package:flutterweb/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutterweb/widgets/navigation_drawer/navigation_drawer.dart';
import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
      drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ? NavigatDrawer()
          : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          filho: Column(
            children: <Widget>[
              NavigatBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
