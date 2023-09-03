import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../widgets/call_to_action/call_to_action.dart';
import '../../widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  final String githubUrl = 'https://github.com/LeticiaBHB';
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Não foi possível abrir a URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CourseDetails(),
        SizedBox(height: 100),
        GestureDetector(
          onTap: () => _launchURL(githubUrl),
          child:CallToAction('Meus projetos'),
        ),
      ],
    );
  }
}
