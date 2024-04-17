import 'package:flutter/material.dart';

class PagPesquisa extends StatefulWidget {
  const PagPesquisa({super.key});

  @override
  State<PagPesquisa> createState() => _PagPesquisaState();
}

class _PagPesquisaState extends State<PagPesquisa> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'EM DESENVOLVIMENTO',
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    ));
  }
}
