import 'package:flutter/material.dart';
import 'package:flutterweb/widgets/navigation_bar/navigation_bar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'widgets/course_details/course_details.dart';



class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
    return  Column(
      children: [
        NavigatBar(),
        SizedBox(height: 100),
        Row(
          children: <Widget> [
            CourseDetails(),
            SizedBox(height: 100),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () => _launchURL(githubUrl),
                child: Text ('Meus projetos'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
