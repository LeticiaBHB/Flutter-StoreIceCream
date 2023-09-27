import 'package:flutter/material.dart';
import 'package:flutterweb/widget/ItemProduto.dart';
import 'package:flutterweb/widget/mobile_app_bar.dart';
import 'package:flutterweb/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({super.key});

  @override
  State<LojaVirtual> createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double larguraTela){
    int colunas = 3;
    if(larguraTela <= 600){
      colunas = 3;
    } else if (larguraTela <= 960){
      colunas = 4;
    } else{
      colunas = 6;
    }
    return colunas;
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var largura = constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFCDD0B5),
            title: largura < 600
                ? PreferredSize(child: MobileAppBar(), preferredSize: Size(largura, alturaBarra))
                :  PreferredSize(child: WebAppBar(), preferredSize: Size(largura, alturaBarra)),
          ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
                crossAxisCount: _ajustarVisualizacao(largura),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              ItemProduto("sorvete" , "7", 'sorvete1.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete2.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete3.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete4.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete5.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete6.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete7.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete8.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete9.jpeg'),
              ItemProduto("sorvete" , "7", 'sorvete10.jpeg'),
              ItemProduto("Mineral Water" , "7", 'drink.jpeg'),
              ItemProduto("Fresh Fruit Juice" , "7", 'drink2.jpeg'),
              ItemProduto("Tea" , "7", 'drink3.jpeg'),
              ItemProduto("sorvete" , "7", 'drink4.jpeg'),
            ],
            ),
          ),
        );
      }
    );
  }
}
