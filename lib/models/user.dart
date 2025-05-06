class User {
  final dynamic email;
  final String first_name;
  final String last_name;
  final String avatar;

  User({
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      avatar: json['avatar'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'first_name': first_name,
      'last_name': last_name,
      'avatar': avatar,
    };
  }
}
