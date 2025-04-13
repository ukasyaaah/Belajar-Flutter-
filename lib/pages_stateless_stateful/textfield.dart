import 'package:flutter/material.dart';

class TextFieldPage extends StatefulWidget {
  const TextFieldPage({super.key});

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  bool isHidden = true;
  TextEditingController _passC = TextEditingController();

  @override
  void dispose() {
    _passC.dispose(); // Jangan lupa di-dispose biar nggak bocor memory
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                /// CAMPOR
                Text(
                  'Campoer',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                TextField(
                  // Apa yg terjadi ketika pencet enter
                  textInputAction: TextInputAction.next,

                  smartQuotesType: SmartQuotesType.enabled,

                  /// Untuk menyamarkan teks -> Biasanya digunakan untuk password
                  // obscureText: true,
                  // obscuringCharacter: 'O',

                  /// Tipe dari text field (password, email, twitter, DLL)
                  keyboardType: TextInputType.emailAddress,

                  /// Untuk mengubah warna kursor
                  cursorColor: Colors.amber,

                  textDirection: TextDirection.ltr,

                  /// Auto Correct
                  autocorrect: true,

                  /// Untuk Memberi label, tambahkan decoration
                  decoration: InputDecoration(
                    /// Entah buat apa, ini smaa kaya helper bedanya diujung kanan
                    counterText: 'Hallo, ini Counter',

                    /// Apa Ini???
                    // isCollapsed: true,
                    // isDense: true,

                    /// Tempatnya sama kaya helper, defaultnya warna merah
                    // errorText: 'Password Salah',

                    /// Petunjuk pengisian ( Kaya caption di Notion)
                    helperText: 'Code min 6 digit, ini helper',
                    helperStyle: TextStyle(color: Colors.grey),

                    /// Kaya Label, bedanya ini contoh pengisian form
                    hintText: 'Example@mail.com, ini hint',

                    // contentPadding: EdgeInsets.symmetric(horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),

                    /// Saat Border Focus / Dipencet
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.amber),
                    ),

                    ///
                  ),
                ),
                SizedBox(height: 24),

                ///ICON
                Text(
                  'Icon',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    /// Ikon di pojok kanan
                    suffixIcon: Icon(Icons.lock_clock_outlined),
                    suffixIconColor: Colors.amber,

                    /// Ikon Di Pojok Kiri
                    prefixIcon: Icon(Icons.facebook),
                    prefixIconColor: Colors.blue,

                    /// Ikon diluar kolom
                    icon: Icon(Icons.email),
                    iconColor: Colors.amber,
                  ),
                ),
                SizedBox(height: 24),

                /// LABEL
                Text(
                  'Label',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                    // Kalo Mau ringkas pake labeltext
                    // label: Text('Ketik Email mu'),
                    labelText: 'Password Kamu',

                    // Biar label bisa mengambang
                    floatingLabelBehavior: FloatingLabelBehavior.auto,

                    // Floating Align bisa tengah bisa start
                    floatingLabelAlignment: FloatingLabelAlignment.center,

                    // Style Floating Label
                    floatingLabelStyle: TextStyle(color: Colors.deepOrange),

                    alignLabelWithHint: true,

                    // label di Style
                    labelStyle: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 24),

                /// ERROR
                Text(
                  'Error',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                TextField(
                  /// Custom Error Cursor
                  cursorErrorColor: Colors.deepOrange,

                  decoration: InputDecoration(
                    /// Custom Error Border
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrange),
                    ),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    // Posisinya sama kek helper, defaultnya warna merah
                    errorText: 'Password Salah',
                  ),
                ),
                SizedBox(height: 24),

                /// LATIHAN PASSWORD
                Text(
                  'Latihan Password',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: _passC,
                  obscureText: isHidden,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.indigo),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        if (isHidden == true) {
                          isHidden = false;
                        } else {
                          isHidden = true;
                        }
                        setState(() {});
                      },
                      icon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print('Passwordnya ${_passC.text}');
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 24),

                /// onChanged & onSubmitted
                Text(
                  'onChanged & onSubmitted',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                TextField(
                  // onChanged = Mendeteksi teks setiap kali ada perubahan
                  onChanged: (value) {
                    print('Teks berubah: $value');
                  },

                  // onSubmitted = Mendeteksi teks saat user tekan Enter
                  onSubmitted: (value) {
                    print('User menekan enter: $value');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
