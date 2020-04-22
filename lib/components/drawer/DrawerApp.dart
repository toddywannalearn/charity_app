import 'package:flutter/material.dart';
import 'Drawer_botao.dart';
import 'Drawer_header.dart';
import 'package:charityapp/screens/Sobre.dart';
import 'package:charityapp/screens/Conta_screen.dart';

const String nome = 'Brenda Toninato';
const String email = 'Brenda@gmail.com';

class DrawerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          AccountDrawerHeader(nome, email),
          DrawerBotao(
            text: 'Conta',
            icon: Icons.account_box,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContaScreen(),
                ),
              );
            },
          ),
          DrawerBotao(
            text: 'Sobre',
            icon: Icons.info,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SobreScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
