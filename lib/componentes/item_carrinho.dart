import 'package:app_avaliativo/modelos/carrinho.dart';
import 'package:app_avaliativo/modelos/tenis.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ItemCarrinho extends StatefulWidget {
  Tenis tenis;
  ItemCarrinho({super.key, required this.tenis});

  @override
  State<ItemCarrinho> createState() => _ItemCarrinhoState();
}

class _ItemCarrinhoState extends State<ItemCarrinho> {
  //atribuindo o metodo para remover item do carrinho

  void removeItem() {
    Provider.of<Carrinho>(context, listen: false).removeItem(widget.tenis);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.tenis.imagem),
        title: Text(widget.tenis.nome),
        subtitle: Text(widget.tenis.preco),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline_rounded),
          onPressed: removeItem,
        ),
      ),
    );
  }
}
