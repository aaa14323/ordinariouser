import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  final String imageUrl;
  const CustomCardImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: FadeInImage(
        placeholder: AssetImage('assets/images/jar-loading.gif'),
        image: NetworkImage(imageUrl),
      ),
    );
  }
}
