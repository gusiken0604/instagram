import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final List<String> imageUrls = [
      'https://static.xx.fbcdn.net/rsrc.php/v3/y_/r/2wPYyq9Ejn4.png',
      'https://dol.ismcdn.jp/mwimgs/5/f/650/img_5f45e18281b17f8ce320b162b9df9aa1345777.jpg',
      'https://dol.ismcdn.jp/mwimgs/e/7/600/img_e7e14cb9aa668fd143a7285707986c59209322.jpg'
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('フィード')),
      body: SingleChildScrollView(
      child:Column(
        children: imageUrls.map((url) => PostWidget(imageUrl: url)).toList(),  // 配列を使って投稿を生成
         // https://static.xx.fbcdn.net/rsrc.php/v3/y_/r/2wPYyq9Ejn4.png
      ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final String imageUrl;

  const PostWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}