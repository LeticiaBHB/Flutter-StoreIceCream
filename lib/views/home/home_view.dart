import 'package:flutter/material.dart';
import 'package:flutterweb/widgets/call_to_action/call_to_action.dart';
import 'package:flutterweb/widgets/centered_view/centered_view.dart';
import 'package:flutterweb/widgets/course_details/course_details.dart';
import 'package:flutterweb/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        filho: Column(
          children: <Widget>[
            NavigatBar(),
            Expanded(
              child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                      child: Center(
                        child: CallToAction('Meus projetos'),
                      ) )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
