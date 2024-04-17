import 'package:flutter/material.dart';

class PagFavoritos extends StatefulWidget {
  const PagFavoritos({super.key});

  @override
  State<PagFavoritos> createState() => _PagFavoritosState();
}

class _PagFavoritosState extends State<PagFavoritos> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'EM DESENVOLVIMENTO',
      style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    ));
  }
}
