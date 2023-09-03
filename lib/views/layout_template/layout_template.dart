import 'package:flutter/material.dart';
import 'package:flutterweb/locator.dart';
import 'package:flutterweb/routing/route_names.dart';
import 'package:flutterweb/routing/router.dart';
import 'package:flutterweb/services/navigation_service.dart';
import 'package:flutterweb/widgets/centered_view/centered_view.dart';
import 'package:flutterweb/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutterweb/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

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
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: HomeRoute,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
