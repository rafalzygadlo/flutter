import 'package:flutter/material.dart';


class ImagePage extends StatelessWidget {
  const ImagePage({super.key});
    

  @override
  Widget build(BuildContext context) {
    const title = 'Fade in images';

    return Scaffold(    
        appBar: AppBar(title: const Text(title)),
        body: Stack(
          children: <Widget>[
            const Center(
              child: Text('iamge page'),
            ),
          ],
        ),
    );
  }
}