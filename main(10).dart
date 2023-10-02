import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Import Images'),
          ),
          body: ImageWidget()),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String assetNamePath = 'assets/images/unnamed.jpg';
    
    final String assetNameUrl = 'https://fffuuu.net/Upload/Images/ved_tak_.png';

    AssetImage imageFromAssetImage = AssetImage(assetNamePath);
    // Image imageFromAsset = Image.asset(assetNameSvg, fit: BoxFit.cover);

    // Image imageFromNetwork = Image.network(assetNameUrl);

    // Image changedImage = Image(
    //   image: imageFromNetwork.image,
    //   color: Colors.green,
    //   colorBlendMode: BlendMode.color,
    // );

  

    return Container(
      constraints: BoxConstraints.expand(height: double.infinity),
      child: Image(image: imageFromAssetImage, fit: BoxFit.cover)
    );
  }
}