import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class BarraNavegacao extends StatelessWidget {
  void Function(int)? onTabChange;
  BarraNavegacao({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.grey[400],
        activeColor: Colors.black,
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.account_circle_outlined,
            text: 'Usuário',
          ),
          GButton(
            icon: Icons.favorite_border_outlined,
            text: 'Favoritos',
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Carrinho',
          ),
        ],
      ),
    );
  }
}
