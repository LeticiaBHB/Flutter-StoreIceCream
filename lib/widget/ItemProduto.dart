import 'package:flutter/material.dart';

class ItemProduto extends StatelessWidget {
  String descricao;
  String preco;
  String imagem;

  ItemProduto(this.descricao, this.preco, this.imagem);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orangeAccent),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              'assets/${this.imagem}',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(flex: 1, child: Text(this.descricao)),
          Expanded(flex: 1, child: Text('r\$ ${this.preco}', style: TextStyle(fontWeight: FontWeight.bold),),),
        ],
      ),
    );
  }
}
