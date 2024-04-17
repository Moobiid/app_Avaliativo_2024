import 'package:app_avaliativo/modelos/tenis.dart';
import 'package:flutter/material.dart';

class Carrinho extends ChangeNotifier {
  //Criando a lista de produtos na loja
  List<Tenis> produtosVenda = [
    Tenis(
        nome: "Campus 00' Dark Green",
        preco: '699.99\n10x 69.99',
        descricao: 'O lendário voltou!',
        imagem: 'lib/imagens/Campus_Dark_Green.jpg'),
    Tenis(
        nome: "Calça Cargo Marrom",
        preco: '299.99\n3x 99.99',
        descricao: 'A calça ideal para seu look!',
        imagem: 'lib/imagens/Calca_Cargo.jpg'),
    Tenis(
        nome: "Camiseta Verde Estampada",
        preco: '199.99\n3x 66.33',
        descricao: 'Camiseta verde com estampa',
        imagem: 'lib/imagens/Camiseta_Estampada.jpg'),
    Tenis(
        nome: "Óculos de Sol Retangular",
        preco: '99.99\n3x 33.33',
        descricao: 'Óculos de Sol mias utilizado atualmente!',
        imagem: 'lib/imagens/Oculos_de_Sol.jpg'),
  ];

  //metodo get para a lista de itens
  List<Tenis> getProdutosVenda() {
    return produtosVenda;
  }

  //Adicionando items do usuario no carrinho

  List<Tenis> carrinhoUsuario = [];

  //utilizando metodo get para usar o carrinho
  List<Tenis> getCarrinhoUsuario() {
    return carrinhoUsuario;
  }

  //metodo para adicionar itens ao carrinho
  //utilizando uma funcao
  void addItem(Tenis tenis) {
    carrinhoUsuario.add(tenis);
    notifyListeners();
  }

  //metodo para remover os itens do carrinho
  void removeItem(Tenis tenis) {
    carrinhoUsuario.remove(tenis);
    notifyListeners();
  }
}
