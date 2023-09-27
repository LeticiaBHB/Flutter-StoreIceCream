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
    if(larguraTela <= 320){
      colunas = 1;
    } else if (larguraTela <= 480){
      colunas = 2;
    }else if (larguraTela <= 720){
      colunas = 3;
    }else if (larguraTela <= 800){
      colunas = 4;
    }else if (larguraTela <= 900){
      colunas = 5;
    } else{
      colunas = 8;
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
              ItemProduto("Melon Mix" , "2.75", 'sorvete1.jpeg'),
              ItemProduto("Berry Yougurt" , "6.90", 'sorvete2.jpeg'),
              ItemProduto("Strawberry Kiwi" , "3.50", 'sorvete3.jpeg'),
              ItemProduto("Cherry Sour" , "7.80", 'sorvete4.jpeg'),
              ItemProduto("Vanilla Crisp" , "5.99", 'sorvete5.jpeg'),
              ItemProduto("Milk Chocolate" , "3.55", 'sorvete6.jpeg'),
              ItemProduto("Red Velvet" , "4.55", 'sorvete7.jpeg'),
              ItemProduto("Coffe Vanilla" , "3.00", 'sorvete8.jpeg'),
              ItemProduto("Pineapple" , "2.00", 'sorvete9.jpeg'),
              ItemProduto("Salted Caramel Cherry" , "9.00", 'sorvete10.jpeg'),
              ItemProduto("Fresh Fruit Juice" , "2.50", 'drink.jpeg'),
              ItemProduto("Tea" , "2.55", 'drink2.jpeg'),
              ItemProduto("Mineral Water" , "1.10", 'drink3.jpeg'),
              ItemProduto("Soda" , "3.00", 'drink4.jpeg'),
            ],
            ),
          ),
        );
      }
    );
  }
}
