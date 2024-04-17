import 'package:app_avaliativo/componentes/barra_navegacao.dart';
//import 'package:app_avaliativo/telas/pag_intro.dart';
import 'package:flutter/material.dart';

import 'pag_carrinho.dart';
import 'pag_compras.dart';
import 'pag_favoritos.dart';
//import 'pag_login.dart';
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
      backgroundColor: Colors.grey[350],
      bottomNavigationBar: BarraNavegacao(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[200],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //logo
              Column(
                children: [
                  const DrawerHeader(
                      child: Icon(
                    Icons.account_circle_outlined,
                    size: 48,
                    opticalSize: 48,
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      color: Colors.grey[200],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.login_outlined),
                      title: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(Icons.info_outline),
                      title: Text(
                        'Sobre',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25, bottom: 25),
                child: ListTile(
                  leading: Icon(Icons.logout_outlined),
                  title: Text(
                    'Logout',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
      ),
      body: _telas[_indexAtual],
    );
  }
}
