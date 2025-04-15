import 'package:flutter/material.dart';

class UserModel {
  @required
  late String avatar;
  @required
  late String name;
  @required
  late String email;

  UserModel(this.avatar, this.email, this.name);
}
