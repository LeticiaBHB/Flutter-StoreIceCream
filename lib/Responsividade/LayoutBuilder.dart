import 'package:flutter/material.dart';

class RegrasLayouts extends StatefulWidget {
  const RegrasLayouts({super.key});

  @override
  State<RegrasLayouts> createState() => _RegrasLayoutsState();
}

class _RegrasLayoutsState extends State<RegrasLayouts> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        //width:100,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: LayoutBuilder( // tem comportamento diferente do mediaquery, pq o mediaquery smepre pega o tamanho total da tela, já o layoutbuilder pega o tamnho disponivel do componente que ele está dentro
            builder: (context, constraint) {
              var largura = constraint.maxWidth;
              print('largura: $largura');
              // return Container(
              //   child: Text('le'),
              // ),
              if (largura < 600) { //celular
                return Text ('celulares');
              } else if (largura < 960) { // celular maiores e tablets
                return Text ("celulares maiores e tablets");
              } else {
                return Text('telas maiores');
              }
            }
              ),
      ),
    );

  }
}
