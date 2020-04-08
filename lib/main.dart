import 'package:flutter/material.dart';
import 'components/Themes.dart';

const String imageUrl =
    'https://images.unsplash.com/photo-1584441405886-bc91be61e56a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';

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
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Image(
      image: NetworkImage(imageUrl),
      alignment: Alignment.center,
      //height: 500.0,
    ),
    Text('Transferencias'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dashboard'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text('Contatos')),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('Transferências'),
          ),
        ],
      ),
    );
  }


  Widget cardContatos() {
    return Container(
      child: Column(
        children: <Widget>[
          Icon(Icons.people),
          Text('Contatos'),
        ],
      ),
    );
  }
}
