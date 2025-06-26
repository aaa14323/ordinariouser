import 'package:flutter/material.dart';
import 'package:ordinariouser/models/user.dart';

class UserDetails extends StatelessWidget {
  final User usuario;
  const UserDetails({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            usuario.nombre,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            usuario.correo,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Text(
            '${usuario.ciudad}, ${usuario.pais}',
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Text(
            'Teléfono: ${usuario.telefono}',
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}