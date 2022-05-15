import 'package:flutter/material.dart';

class Avengers extends StatelessWidget {
  final String name;
  final String imgSrc;

  Avengers(this.name, this.imgSrc);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage(imgSrc);
    Image image = Image(
      image: assetImage,
      width: double.infinity,
    );

    return Container(
      padding: const EdgeInsets.all(30),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(bottom: 15),
            child: Text(
              name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: image,
          ),
        ],
      ),
    );
  }
}
