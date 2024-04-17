import 'package:app_avaliativo/modelos/tenis.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListaTenis extends StatelessWidget {
  Tenis tenis;
  void Function()? onTap;
  ListaTenis({super.key, required this.tenis, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //Criando os dados para exibicao do produtos

        //criando uma imagem
        ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(tenis.imagem)),

        //desricao
        Text(tenis.descricao),
        //preco
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  tenis.nome,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text('R\$ ${tenis.preco}'),
              ]),
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12))),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
