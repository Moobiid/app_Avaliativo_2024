import 'package:app_avaliativo/telas/pag_intro.dart';
import 'package:flutter/material.dart';
//import 'package:device_preview/device_preview.dart';

class PagHome extends StatelessWidget {
  const PagHome({super.key}); //construtor da classe

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Resto do seu layout
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Criando um texto para exibição na tela
                  Text('CARAIO'),
                ],
              ),
            ),
          ),
          // Botão de voltar
          Positioned(
            top: 40.0, // ajuste conforme necessário
            left: 10.0, // ajuste conforme necessário
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.black,
              ),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PagExplorar()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
