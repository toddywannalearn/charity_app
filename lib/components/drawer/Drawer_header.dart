import 'package:flutter/material.dart';

class AccountDrawerHeader extends StatelessWidget {

  final String _nome;
  final String _email;

  AccountDrawerHeader(this._nome, this._email);

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountEmail: Text(_email),
      accountName: Text(_nome),
      currentAccountPicture: CircleAvatar(
        child: Icon(
          Icons.person,
          size: 40.0,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
