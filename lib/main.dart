import 'package:flutter/material.dart';
import 'components/Themes.dart';
import 'screens/ListaContatos.dart';
import 'screens/ListaTransferencias.dart';
import 'components/drawer/DrawerApp.dart';
import 'screens/Formulario_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemesApp().mainTheme(),
      home: ByteBank(),
    );
  }
}

class ByteBank extends StatefulWidget {
  @override
  _ByteBankState createState() => _ByteBankState();
}

class _ByteBankState extends State<ByteBank> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ListaContatos(),
    ListaTransferencias(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      drawer: DrawerApp(),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    ),
                  isScrollControlled: true,
                  builder: (context) => Formulario());
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Contatos'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('Transferências'),
          ),
        ],
      ),
    );
  }
}
