import 'package:app_avaliativo/telas/pag_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class PagUsuario extends StatelessWidget {
  const PagUsuario({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Nome: ${data.name}, Senha: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Usuário inexistente!';
      }
      if (users[data.name] != data.password) {
        return 'Senhas não coincidem!';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    debugPrint('Signup Name: ${data.name}, Senha: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Nome: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Usuário inexistente!';
      }
      return '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      theme: LoginTheme(
        primaryColor: Colors.grey[700],
        accentColor: Colors.black,
        textFieldStyle: const TextStyle(decorationColor: Colors.black),
        inputTheme: const InputDecorationTheme(
            fillColor: Colors.black,
            prefixIconColor: Colors.black,
            suffixIconColor: Colors.black,
            hoverColor: Colors.grey,
            focusColor: Colors.grey),
      ),
      title: 'UPPER',
      logo: const AssetImage('lib/imagens/logotipo.png'),
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const PagHome(),
        ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
