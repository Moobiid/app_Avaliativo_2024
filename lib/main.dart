//import 'package:app_avaliativo/telas/pag_compras.dart';
import 'package:app_avaliativo/modelos/carrinho.dart';
import 'package:app_avaliativo/telas/pag_intro.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDDK1dccjJfFz-VdVitONVlPce807xzcbk",
            appId: "1:230644614488:web:eb897e37d12940a57cd12d",
            messagingSenderId: "230644614488",
            projectId: "aplicativo-avaliativo"));
  }
  await Firebase.initializeApp();

  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Carrinho(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PagExplorar(),
      ),
    );
  }
}
