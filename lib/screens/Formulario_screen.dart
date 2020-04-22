import 'package:flutter/material.dart';
import 'package:charityapp/components/TextField.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  bool _checkboxValue = false;
  String _dropSelectedValue = 'Itau';
  double _sliderValue = 50.0;
  static const menuItems = <String>[
    'Itau',
    'Caixa',
    'Bradesco',
    'Santander',
    'Banco do Brasil'
  ];

  final List<DropdownMenuItem<String>> dropMenuItem = menuItems
      .map(
        (String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 500,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.brown[700],
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: camposFormulario(),
      ),
    );
  }

  Widget camposFormulario() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Field(
              label: 'Instituição',
            ),
            dropDrown(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Field(
                    label: 'Agencia',
                    hint: 'ex: 9999',
                    maxLength: 4,
                    keyboard: TextInputType.number,
                  ),
                ),
                Expanded(
                  child: Field(
                    label: 'Conta',
                    hint: 'ex: 999999',
                    keyboard: TextInputType.numberWithOptions(),
                  ),
                ),
              ],
            ),
            checkBox(),
            Card(
              child: ListTile(
                title: Center(
                  child: Text('R\$\ ${_sliderValue.toString()}',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            ),
            sliderValor(),
            SizedBox(
              height: 16.0,
            ),
            RaisedButton(
              child: Text('Continuar'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget checkBox() {
    return CheckboxListTile(
      dense: false,
      value: _checkboxValue,
      title: Text('Salvar conta?'),
      onChanged: (bool value) {
        setState(() {
          return this._checkboxValue = value;
        });
      },
    );
  }

  Widget dropDrown() {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0.0),
      title: Text("Banco:"),
      trailing: DropdownButtonHideUnderline(
        child: DropdownButton(
          value: _dropSelectedValue,
          hint: Text('selecione'),
          items: dropMenuItem,
          onChanged: (String newValue) {
            setState(() {
              _dropSelectedValue = newValue;
            });
          },
        ),
      ),
    );
  }

  Widget sliderValor() {
    return Slider(
      activeColor: Colors.brown[700],
      value: _sliderValue,
      min: 00.0,
      max: 100.0,
      divisions: 4,
      label: '${_sliderValue.floor()}',
      onChanged: (double value) {
        setState(() {
          return _sliderValue = value;
        });
      },
    );
  }
}
