import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  final String imageURL;
  
  ImageAsset(this.imageURL);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(imageURL);
    Image image = Image(image: assetImage);

    return image;
  }
}