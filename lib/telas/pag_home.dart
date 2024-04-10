import 'package:app_avaliativo/componentes/barra_navegacao.dart';
//import 'package:app_avaliativo/telas/pag_intro.dart';
import 'package:flutter/material.dart';

import 'pag_carrinho.dart';
import 'pag_compras.dart';
import 'pag_favoritos.dart';
import 'pag_pesquisa.dart';
//import 'package:device_preview/device_preview.dart';

class PagHome extends StatefulWidget {
  const PagHome({super.key}); //construtor da classe

  @override
  State<PagHome> createState() => _PagHomeState();
}

class _PagHomeState extends State<PagHome> {
//criando um indicador para ter melhor controle sobre a barra de navegacao
  int _indexAtual = 0;

//criadno um metodo para navegar entre as telas
//quando o usuario clicar em um item da barra de navegacao
  void navigateBottomBar(int index) {
    setState(() {
      _indexAtual = index;
    });
  }

  //criando uma lista de widgets para armazenar as telas
  final List<Widget> _telas = [
    //Pagina de compras
    const PagCompras(),

    //Pagina de pesquisa
    const PagPesquisa(),

    //Pagina de favoritos
    const PagFavoritos(),

    //Pagina de carrinho
    const PagCarrinho(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BarraNavegacao(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _telas[_indexAtual],
    );
  }
}
