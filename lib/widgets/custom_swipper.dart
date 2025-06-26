import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:ordinariouser/models/user.dart';
import 'package:ordinariouser/widgets/custom_card_image.dart';

class CustomSwipper extends StatelessWidget {
  final List<User> usuarios;
  const CustomSwipper({super.key, required this.usuarios});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.54,
      child: Swiper(
        onTap: (index) =>
            Navigator.pushNamed(context, 'details', arguments: usuarios[index]),
        itemBuilder: (context, index) {
          return CustomCardImage(
            imageUrl: usuarios[index].imagenUrl,
          );
        },
        itemCount: usuarios.length,
        itemWidth: 300,
        autoplay: false,
        control: SwiperControl(),
        layout: SwiperLayout.STACK,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }
}
