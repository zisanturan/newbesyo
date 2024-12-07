import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'auth_screen.dart'; // Giriş ekranı

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
// Şehir kontrolü için ekledim
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  bool _isLoading = false;
  String _selectedGender = 'Erkek'; // Varsayılan cinsiyet
  bool _isPrivacyPolicyAccepted = false; // Gizlilik politikası onayı
  String _selectedCity = 'İstanbul'; // Varsayılan şehir

  // Türkiye'deki şehirler
  final List<String> _cities = [
    'Adana',
    'Adıyaman',
    'Afyonkarahisar',
    'Ağrı',
    'Aksaray',
    'Amasya',
    'Ankara',
    'Antalya',
    'Ardahan',
    'Artvin',
    'Aydın',
    'Balıkesir',
    'Bartın',
    'Batman',
    'Bayburt',
    'Bilecik',
    'Bingöl',
    'Bitlis',
    'Bolu',
    'Burdur',
    'Bursa',
    'Çanakkale',
    'Çankırı',
    'Çorum',
    'Denizli',
    'Diyarbakır',
    'Düzce',
    'Edirne',
    'Elazığ',
    'Erzincan',
    'Erzurum',
    'Eskişehir',
    'Gaziantep',
    'Giresun',
    'Gümüşhane',
    'Hakkâri',
    'Hatay',
    'Iğdır',
    'Isparta',
    'İstanbul',
    'İzmir',
    'Kahramanmaraş',
    'Karabük',
    'Karaman',
    'Kars',
    'Kastamonu',
    'Kayseri',
    'Kırıkkale',
    'Kırklareli',
    'Kırşehir',
    'Kilis',
    'Kocaeli',
    'Konya',
    'Kütahya',
    'Malatya',
    'Manisa',
    'Mardin',
    'Mersin',
    'Muğla',
    'Muş',
    'Nevşehir',
    'Niğde',
    'Ordu',
    'Osmaniye',
    'Rize',
    'Sakarya',
    'Samsun',
    'Şanlıurfa',
    'Siirt',
    'Sinop',
    'Sivas',
    'Şırnak',
    'Tekirdağ',
    'Tokat',
    'Trabzon',
    'Tunceli',
    'Uşak',
    'Van',
    'Yalova',
    'Yozgat',
    'Zonguldak'
  ];

  Future<void> _register() async {
    if (_validateForm()) {
      setState(() {
        _isLoading = true;
      });

      try {
        UserCredential userCredential =
            await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );

        await _firestore.collection('users').doc(userCredential.user!.uid).set({
          'adSoyad': _nameController.text.trim(),
          'dogumTarihi': _dobController.text.trim(),
          'cinsiyet': _selectedGender,
          'telefon': _phoneController.text.trim(),
          'email': _emailController.text.trim(),
          'sehir': _selectedCity, // Şehir bilgisi ekledim
          'uid': userCredential.user!.uid,
        });

        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AuthScreen()),
          );
        }
      } catch (e) {
        setState(() {
          _isLoading = false;
        });

        if (mounted) {
          _showErrorDialog("Kayıt Başarısız", e.toString());
        }
      }
    }
  }

  bool _validateForm() {
    if (_nameController.text.isEmpty ||
        _dobController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _selectedCity.isEmpty) {
      // Şehir kontrolü ekledim
      _showErrorDialog("Eksik Bilgi", "Lütfen tüm alanları doldurun.");
      return false;
    }

    if (!_isValidEmail(_emailController.text.trim())) {
      _showErrorDialog("Geçersiz E-posta", "Lütfen geçerli bir e-posta girin.");
      return false;
    }

    if (!_isValidPhone(_phoneController.text.trim())) {
      _showErrorDialog(
          "Geçersiz Telefon", "Lütfen geçerli bir telefon numarası girin.");
      return false;
    }

    if (!_isStrongPassword(_passwordController.text.trim())) {
      _showErrorDialog("Geçersiz Şifre",
          "Şifreniz en az 8 karakter, bir rakam içermelidir.");
      return false;
    }

    if (!_isPrivacyPolicyAccepted) {
      _showErrorDialog("Gizlilik Politikası",
          "Gizlilik politikasını kabul etmeniz gerekiyor.");
      return false;
    }

    return true;
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailRegex.hasMatch(email);
  }

  bool _isValidPhone(String phone) {
    final phoneRegex =
        RegExp(r'^(05\d{9})$'); // Türk telefon numarası, 5 ile başlayan
    return phoneRegex.hasMatch(phone);
  }

  bool _isStrongPassword(String password) {
    final passwordRegex = RegExp(r'^(?=.*\d)[A-Za-z\d@$!%*?&]{8,}$');
    return passwordRegex.hasMatch(password);
  }

  void _showErrorDialog(String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Tamam"),
          ),
        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        _dobController.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayıt Ol'),
        backgroundColor: const Color.fromARGB(255, 0, 64, 255), // Blue color
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/besyo_logo.png',
              height: 120,
            ),
            const SizedBox(height: 20),
            Text(
              'Hesap Oluştur',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFED2D3F), // Red color
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            _buildTextField(
              controller: _nameController,
              label: 'Ad ve Soyad',
              icon: Icons.person,
              color: const Color.fromARGB(255, 0, 153, 255), // Aqua color
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: AbsorbPointer(
                child: _buildTextField(
                  controller: _dobController,
                  label: 'Doğum Tarihi (GG/AA/YYYY)',
                  icon: Icons.calendar_today,
                  color: const Color.fromARGB(255, 0, 140, 255),
                ),
              ),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: _selectedGender,
              onChanged: (value) {
                setState(() {
                  _selectedGender = value!;
                });
              },
              items: ['Erkek', 'Kadın'].map((gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Cinsiyet',
                prefixIcon: const Icon(Icons.transgender,
                    color: Color.fromARGB(255, 0, 182, 254)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 10),
            _buildTextField(
              controller: _phoneController,
              label: 'Telefon Numarası',
              icon: Icons.phone,
              keyboardType: TextInputType.phone,
              color: const Color.fromARGB(255, 0, 162, 255),
            ),
            const SizedBox(height: 10),
            _buildTextField(
              controller: _emailController,
              label: 'E-posta',
              icon: Icons.email,
              keyboardType: TextInputType.emailAddress,
              color: const Color.fromARGB(255, 0, 153, 255),
            ),
            const SizedBox(height: 10),
            _buildTextField(
              controller: _passwordController,
              label: 'Şifre',
              icon: Icons.lock,
              obscureText: true,
              color: const Color.fromARGB(255, 0, 174, 255),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: _selectedCity,
              onChanged: (value) {
                setState(() {
                  _selectedCity = value!;
                });
              },
              items: _cities.map((city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
              decoration: InputDecoration(
                labelText: 'Şehir',
                prefixIcon: const Icon(Icons.location_city,
                    color: Color.fromARGB(255, 0, 182, 254)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Gizlilik Politikası Onay Kutusu
            Row(
              children: [
                Checkbox(
                  value: _isPrivacyPolicyAccepted,
                  onChanged: (bool? value) {
                    setState(() {
                      _isPrivacyPolicyAccepted = value!;
                    });
                  },
                ),
                const Text("Gizlilik politikasını kabul ediyorum."),
              ],
            ),
            const SizedBox(height: 20),
            _isLoading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _register,
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color.fromARGB(255, 0, 64, 255), // Blue color
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Kayıt Ol',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType keyboardType = TextInputType.text,
    bool obscureText = false,
    required Color color,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: color),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
