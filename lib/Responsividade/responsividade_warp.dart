import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({super.key});

  @override
  State<ResponsividadeWrap> createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  double altura = 100;
  double largura = 140;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap")),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        child: Wrap(
         // alignment: WrapAlignment.spaceBetween,
          //alignment: WrapAlignment.center,
          //alignment: WrapAlignment.end,
          alignment: WrapAlignment.spaceEvenly,
          //alignment: WrapAlignment.start,
          spacing: 10,
          runSpacing: 10,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orangeAccent,
            ),   Container(
              width: largura,
              height: altura,
              color: Colors.pinkAccent,
            ),  Container(
              width: largura,
              height: altura,
              color: Colors.deepPurple,
            ),Container(
              width: largura,
              height: altura,
              color: Colors.tealAccent,
            ),  Container(
              width: largura,
              height: altura,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
