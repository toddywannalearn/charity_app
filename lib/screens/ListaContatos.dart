import 'package:flutter/material.dart';

const String imageUrl =
    'https://images.unsplash.com/photo-1584441405886-bc91be61e56a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';

class ListaContatos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        cardContato(),
        cardContato(),
        cardContato(),
        cardContato(),
        cardContato(),
        cardContato(),
      ],
    );
  }

  Widget scrollImagem(){
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints){
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: viewportConstraints.maxHeight,
            ),
            child: Column(
              children: <Widget>[
                Image(
                  image: NetworkImage(imageUrl),
                  alignment: Alignment.center,
                ),
                Divider(
                  height: 5.0,
                ),
                ListView(
                  semanticChildCount: 4,
                  shrinkWrap: true,
                  children: <Widget>[
                    cardContato(),
                    cardContato(),
                    cardContato(),
                    cardContato(),
                    cardContato(),
                    cardContato(),
                    cardContato(),
                    cardContato(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget cardContato() {
    return Card(
      child: ListTile(
        title: Text('loren ipsun'),
        subtitle: Text('São Paulo'),
        trailing: IconButton(
          icon: Icon(Icons.monetization_on),
          onPressed: (){},
        ),
      ),
    );
  }
}
