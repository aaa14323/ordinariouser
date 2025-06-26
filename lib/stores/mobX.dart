import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'package:ordinariouser/models/user.dart';
import 'dart:convert' as convert;
import 'package:ordinariouser/models/user_model.dart';
part 'mobX.g.dart'; //generado con build_runner

class UserStore = _UserStore with _$UserStore; //clase principal de MobX, se conecta con '_UserStore' usando el mixin generado por MobX.

abstract class _UserStore with Store { //"Store" es una clase base en MobX que permite manejar estado reactivo
  @observable //cada vez que se actualice, los widgets que la usen con Observer se actualizarán.
  ObservableList<User> usuarios = ObservableList<User>(); //Lista observable de usuarios

  @action //se encarga de obtener datos y modificar un observable, obtiene usuarios desde la API
  Future<void> obtenerUsuarios() async {
    final uri = Uri.parse("https://randomuser.me/api/?results=8");
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      //el json se conierte en una lista de usuarios
      final data = convert.jsonDecode(response.body) as Map<String, dynamic>;
      final respuesta = UserResponse.fromJson(data);
      usuarios = ObservableList.of(respuesta.results); //Se actualiza la lista observable
    }
  }
}
