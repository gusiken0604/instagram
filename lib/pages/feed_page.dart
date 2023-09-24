import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('フィード')),
      body: Column(
        children: [
          Image.network(
              'https://static.xx.fbcdn.net/rsrc.php/v3/y_/r/2wPYyq9Ejn4.png',
            fit: BoxFit.cover,

          ),
  Row(
    children: [
    Text('aa'),
    Text('bb'),
      Column(
        children:[
          Text('ccc'),
          Text('dddd'),
        ],
      ),
      ],
  ),
        ],
      ),
    );
  }
}