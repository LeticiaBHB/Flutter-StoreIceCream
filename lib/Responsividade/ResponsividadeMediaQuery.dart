import 'package:flutter/material.dart';

class ResponsividadeMediaQuery extends StatefulWidget {
  const ResponsividadeMediaQuery({super.key});

  @override
  State<ResponsividadeMediaQuery> createState() =>
      _ResponsividadeMediaQueryState();
}

class _ResponsividadeMediaQueryState extends State<ResponsividadeMediaQuery> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;
    var alturaBarraStatus = MediaQuery.of(context).padding.top; // barra de status é do celular do cliente
    var alturaAppBar = AppBar().preferredSize.height;
    var larguraItem = largura / 2;

    return Scaffold(
        appBar: AppBar(
          title: Text("Responsividade"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  width: larguraItem, //50% da área total
                  height: altura - alturaAppBar - alturaBarraStatus,
                  color: Colors.tealAccent,
                  child: Text('responsividade'),
                ),
                Container(
                  width: larguraItem, //50% da área total
                  height: altura - alturaAppBar - alturaBarraStatus,
                  color: Colors.yellow,
                  child: Text('responsividade'),
                ),
              ],
            ),
          ],
        ));
  }
}
