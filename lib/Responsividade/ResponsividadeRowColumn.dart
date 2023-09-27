import 'package:flutter/material.dart';

class ResponsividadeRowColumn extends StatefulWidget {
  const ResponsividadeRowColumn({super.key});

  @override
  State<ResponsividadeRowColumn> createState() =>
      _ResponsividadeRowColumnState();
}

class _ResponsividadeRowColumnState extends State<ResponsividadeRowColumn> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: Text("Responsividade"),
        ),
        body: Column(
          children: [
            Expanded(
              flex:1
              ,
              child: Container(
              color: Colors.orange
            ),
            ),
            Expanded(
              flex:5
              ,
              child: Row(
              children:[
              Expanded(
                flex:1
                ,
                child: Container(
                    color: Colors.lightBlueAccent
                ),
              ),
                Expanded(
                flex:1
                ,
                child: Container(
                    color: Colors.pink
                ),
              ),
                  Expanded(
                    flex:2
                    ,
                    child: Container(
                        color: Colors.brown
                    ),
                  ),
              ]
            ),
            ),
            Expanded(
              flex: 2,
              child: Container(
              color: Colors.red
            ),
            )
          ],
        ));
  }
}
