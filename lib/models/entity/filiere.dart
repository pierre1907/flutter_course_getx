import 'dart:convert';

class Filiere {
  String libelle;

  Filiere({required this.libelle});

  Filiere copyWith({
    String? libelle,
  }) {
    return Filiere(
      libelle: libelle ?? this.libelle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'libelle': libelle,
    };
  }

  factory Filiere.fromMap(Map<String, dynamic> map) {
    return Filiere(
      libelle: map['libelle'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Filiere.frinJson(String source) =>
      Filiere.fromMap(json.decode(source));

  @override
  String toString() => 'Filiere(libelle: $libelle)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Filiere && other.libelle == libelle;
  }
}
