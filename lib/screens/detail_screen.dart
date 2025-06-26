import 'package:flutter/material.dart';
import 'package:ordinariouser/models/user.dart';
import 'package:ordinariouser/widgets/user_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final User usuario = ModalRoute.of(context)!.settings.arguments as User;

    return Scaffold(
      appBar: AppBar(
        title: Text(usuario.nombre),
        backgroundColor: const Color.fromARGB(255, 223, 223, 223),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: ClipRRect(
                //borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  usuario.imagenUrl,
                  width: 200,
                  height: 250,
                ),
              ),
            ),
            const SizedBox(height: 20),
            UserDetails(usuario: usuario),
          ],
        ),
      ),
    );
  }
}
