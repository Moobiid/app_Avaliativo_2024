import 'package:flutter/material.dart';

class PagCarrinho extends StatefulWidget {
  const PagCarrinho({super.key});

  @override
  State<PagCarrinho> createState() => _PagCarrinhoState();
}

class _PagCarrinhoState extends State<PagCarrinho> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Pagina de carrinho'));
  }
}
