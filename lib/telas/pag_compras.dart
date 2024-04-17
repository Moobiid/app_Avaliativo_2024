import 'package:app_avaliativo/modelos/carrinho.dart';
import 'package:app_avaliativo/modelos/tenis.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../componentes/lista_tenis.dart';

class PagCompras extends StatefulWidget {
  const PagCompras({super.key});

  @override
  State<PagCompras> createState() => _PagComprasState();
}

class _PagComprasState extends State<PagCompras> {
  //criando o metodo para adicionar itens ao carrinho
  void addCarrinho(Tenis tenis) {
    Provider.of<Carrinho>(context, listen: false).addItem(tenis);

    //criando uma box de dialogo avisando sobre o sucesso da acao
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Adicionado com sucesso!'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Carrinho>(
      builder: (context, value, child) => Column(
        children: [
          //Criando uma barra de pesquisa
          Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Pesquisar...'), Icon(Icons.search_outlined)],
              )),

          //Criando um bordao
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text('tudo o que você precisa em um lugar!'),
          ),

          //criando as imagens em destaque
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Tendências!',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Ver todos',
                  style: TextStyle(
                      color: Colors.blue[500], fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          Expanded(
            child: ListView.builder(
              itemCount: 4,
              //Definindo a orientacao da lista para rolagem
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //Criando os tenis
                Tenis tenis = value.getProdutosVenda()[index];
                //criando um display para sapatos
                return ListaTenis(
                  tenis: tenis,
                  onTap: () => addCarrinho(tenis),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
