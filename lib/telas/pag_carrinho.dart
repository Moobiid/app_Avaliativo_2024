import 'package:app_avaliativo/componentes/item_carrinho.dart';
import 'package:app_avaliativo/modelos/carrinho.dart';
import 'package:app_avaliativo/modelos/tenis.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PagCarrinho extends StatefulWidget {
  const PagCarrinho({super.key});

  @override
  State<PagCarrinho> createState() => _PagCarrinhoState();
}

class _PagCarrinhoState extends State<PagCarrinho> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Carrinho>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Meu carrinho ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.getCarrinhoUsuario().length,
                    itemBuilder: ((context, index) {
                      Tenis individualProduto =
                          value.getCarrinhoUsuario()[index];

                      return ItemCarrinho(
                        tenis: individualProduto,
                      );
                    })))
          ],
        ),
      ),
    );
  }
}
