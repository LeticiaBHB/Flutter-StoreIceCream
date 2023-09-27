import 'package:flutter/material.dart';
import 'package:flutterweb/Portif%C3%B3lio/LojaVirtual.dart';
import 'package:flutterweb/Responsividade/LayoutBuilder.dart';
import 'package:flutterweb/Responsividade/Orientacao.dart';
import 'package:flutterweb/Responsividade/ResponsividadeMediaQuery.dart';
import 'package:flutterweb/Responsividade/ResponsividadeRowColumn.dart';
import 'package:flutterweb/Responsividade/responsividade_warp.dart';
import 'package:flutterweb/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorWidget.builder = (details) => MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.redAccent,
          body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.warning_amber_sharp,
                    color: Colors.white, size: 100),
                const SizedBox(height: 20),
                SelectableText(
                  details.exception.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter web",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LojaVirtual(),
        '/ResponsividadeMediaQuery': (context) => ResponsividadeMediaQuery(),
        '/ResponsividadeRolColumn': (context) => ResponsividadeRowColumn(),
        '/ResponsividadeWrap': (context) => ResponsividadeWrap(),
        '/Orientacao': (context) => Orientacao(),
        '/RegrasLayouts': (context) => RegrasLayouts(),
        '/LojaVirtual': (context) => LojaVirtual(),
      },
    );
  }
}
