import 'package:flutter/material.dart';

const String imageUrl =
    'https://images.unsplash.com/photo-1584441405886-bc91be61e56a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60';

class SobreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Informações'),
      ),
      body: tela(),
    );
  }

  Widget tela(){
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(imageUrl),
            alignment: Alignment.center,
            //height: 300.0,
          ),
          Divider(
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed augue justo, sodales eget nulla sed, posuere accumsan ante.\n'
                'Aenean viverra orci in condimentum scelerisque. Nulla rhoncus facilisis ante auctor finibus. Vivamus egestas augue eget posuere vehicula.\n'
                'Curabitur et enim feugiat, consequat ante in, pretium velit. Curabitur eget efficitur dui. Praesent leo enim, fermentum quis luctus nec, mollis eget felis.\n'
                'Ut eu congue mauris. Curabitur ex elit, hendrerit eu ex ac, molestie pulvinar enim. Ut tincidunt, massa ut laoreet rutrum, sem mi dapibus enim, mattis elementum lorem dui ut leo.\n'
                'Nunc posuere nisl eu elit lacinia, quis elementum justo laoreet. Donec bibendum volutpat tincidunt. Vestibulum scelerisque dapibus enim, eu sodales eros elementum eget.'),
          ),
        ],
      ),
    );
  }
}
