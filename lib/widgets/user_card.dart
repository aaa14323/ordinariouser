import 'package:flutter/material.dart';
import 'package:ordinariouser/models/user.dart';

class UserCard extends StatelessWidget {
  final User usuario;
  const UserCard({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        'details',
        arguments: usuario,
      ),
      child: Container(
        width: 140,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                fit: BoxFit.cover,
                width: 140,
                height: 140,
                placeholder: const AssetImage('assets/images/jar-loading.gif'),
                image: NetworkImage(usuario.imagenUrl),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              usuario.nombre,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              usuario.correo,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
