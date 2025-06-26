part of 'mobX.dart';

mixin _$UserStore on _UserStore, Store {
  late final _$usuariosAtom = Atom(
    name: '_UserStore.usuarios',
    context: context,
  );

  @override
  ObservableList<User> get usuarios {
    _$usuariosAtom.reportRead();
    return super.usuarios;
  }

  @override
  set usuarios(ObservableList<User> value) {
    _$usuariosAtom.reportWrite(value, super.usuarios, () {
      super.usuarios = value;
    });
  }

  late final _$obtenerUsuariosAsyncAction = AsyncAction(
    '_UserStore.obtenerUsuarios',
    context: context,
  );

  @override
  Future<void> obtenerUsuarios() {
    return _$obtenerUsuariosAsyncAction.run(() => super.obtenerUsuarios());
  }

  @override
  String toString() {
    return '''
usuarios: ${usuarios}
    ''';
  }
}
