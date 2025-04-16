class User {
  final int id;
  final dynamic email;
  final String first_name;
  final String last_name;
  final String avatar;

  /// Constructor
  User({
    required this.id,
    required this.email,
    required this.first_name,
    required this.last_name,
    required this.avatar,
  });

  /// From JSON -> Ubah JSON jadi object User
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      email: json['email'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      avatar: json['avatar'],
    );
  }

  /// To JSON -> Kirim data ke API
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
