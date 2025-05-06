class User {
  final int id;
  final dynamic email;
  final String first_name;
  final String last_name;
  final String avatar;

  User({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> e) {
    return User(
      id: e['id'],
      email: e['email'],
      first_name: e['first_name'],
      last_name: e['last_name'],
      avatar: e['avatar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'avatar': avatar,
    };
  }
}
