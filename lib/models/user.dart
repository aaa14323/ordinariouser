class User {
  final String nombre;
  final String correo;
  final String imagenUrl;
  final String ciudad;
  final String pais;
  final String telefono;

  User({
    required this.nombre,
    required this.correo,
    required this.imagenUrl,
    required this.ciudad,
    required this.pais,
    required this.telefono,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    final name = json['name'];
    final location = json['location'];
    final picture = json['picture'];

    return User(
      nombre: '${name['first']} ${name['last']}',
      correo: json['email'],
      imagenUrl: picture['large'],
      ciudad: location['city'],
      pais: location['country'],
      telefono: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nombre': nombre,
      'correo': correo,
      'imagenUrl': imagenUrl,
      'ciudad': ciudad,
      'pais': pais,
      'telefono': telefono,
    };
  }
}
