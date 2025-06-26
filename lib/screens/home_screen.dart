import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:ordinariouser/stores/mobX.dart';
import 'package:ordinariouser/widgets/custom_list_view.dart';
import 'package:ordinariouser/widgets/custom_swipper.dart';

final userStore = UserStore();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Solo obtenemos usuarios una vez al inicio
    userStore.obtenerUsuarios();

    return Scaffold(
      appBar: AppBar(
        title: Text('User App'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Observer(
        builder: (_) {
          final usuarios = userStore.usuarios;

          if (usuarios.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSwipper(usuarios: usuarios),
                const SizedBox(height: 30),
                CustomListView(usuarios: usuarios),
                const SizedBox(height: 10),
                CustomListView(usuarios: usuarios),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
