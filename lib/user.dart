
class User { 
  final String nome;
  final String email;
  final String senha;

  final String role; // Pode ser "admin" ou "user"

  User({required this.nome, required this.email, required this.senha, required this.role});

}
