import 'package:belajar_flutter/pages_http/http_delete.dart';
import 'package:belajar_flutter/pages_http/http_get.dart';
import 'package:belajar_flutter/pages_http/http_post.dart';
import 'package:belajar_flutter/pages_http/http_put_patch.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_get.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_get_lagi.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_post.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_post2.dart';
import 'package:belajar_flutter/pages_stateless_stateful/bottom_navbar.dart';
import 'package:belajar_flutter/pages_stateless_stateful/drawer.dart';
import 'package:belajar_flutter/pages_stateless_stateful/dropdown.dart';
import 'package:belajar_flutter/pages_stateless_stateful/latihan_materi/bottom_sheest.dart';
import 'package:belajar_flutter/pages_stateless_stateful/latihan_materi/dropdown_warna.dart';
import 'package:belajar_flutter/pages_stateless_stateful/navigation.dart';
import 'package:belajar_flutter/pages_stateless_stateful/navigation_bar.dart';
import 'package:belajar_flutter/pages_stateless_stateful/tab_bar.dart';
import 'package:belajar_flutter/pages_stateless_stateful/textfield.dart';
import 'package:belajar_flutter/pages_stateless_stateful/bottom_sheet.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyAmazingApp());
}

class MyAmazingApp extends StatelessWidget {
  const MyAmazingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HttpDelete(
      
    ));
  }
}
