import 'package:flutter/material.dart';


/// Classe para TextField genérico
class Field extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String hint;
  final IconData icon;
  final int maxLength;
  final TextInputType keyboard;
  final void Function(String) onChanged;

  Field({this.controller, this.label, this.hint, this.icon, this.maxLength, this.keyboard, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      keyboardType: keyboard,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        icon: icon == null ? null : Icon(icon),
      ),
    );
  }
}
