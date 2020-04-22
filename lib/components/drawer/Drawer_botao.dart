import 'package:flutter/material.dart';

/**
 *
 */
class DrawerBotao extends StatelessWidget {

  final String text;
  final IconData icon;
  final void Function() onPressed;

  DrawerBotao({this.text, this.onPressed, this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
      ),
      title: Text(text),
      onTap: onPressed,
    );
  }
}
