import 'package:app_avaliativo/telas/pag_home.dart';
import 'package:flutter/material.dart ';

class PagExplorar extends StatelessWidget {
  const PagExplorar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logotipo do app

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                child: Image.asset(
                  'lib/imagens/logo.png',
                ),
              ),
            ),

            const SizedBox(height: 2),

            //botão de explorar

            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const PagHome())),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(25),
              ),
              child: const Text(
                'Explorar',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
