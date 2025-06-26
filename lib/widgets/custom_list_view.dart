import 'package:flutter/material.dart';
import 'package:ordinariouser/models/user.dart';
import 'package:ordinariouser/widgets/user_card.dart';

class CustomListView extends StatelessWidget {
  final List<User> usuarios; // de movies a user *
  const CustomListView({super.key, required this.usuarios});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        SizedBox(
          height: 210,
          width: double.infinity,
          child: ListView.builder(
            itemCount: usuarios.length, //*
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) => UserCard(usuario: usuarios[i]), //*
          ),
        ),
      ],
    );
  }
}
