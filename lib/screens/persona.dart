import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';

class PersonalTrainingFormPage extends StatefulWidget {
  const PersonalTrainingFormPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PersonalTrainingFormPageState createState() =>
      _PersonalTrainingFormPageState();
}

class _PersonalTrainingFormPageState extends State<PersonalTrainingFormPage> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _phone;
  String? _email;
  String? _goal;
  String? _workoutDuration;
  String? _workoutArea;

  final Color primaryColor = Color.fromARGB(255, 255, 0, 68);
  final Color secondaryColor = Color.fromARGB(255, 60, 0, 255);

  // Save data to Firestore
  void saveDataToFirestore() async {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      try {
        // Save the form data to Firestore
        await FirebaseFirestore.instance.collection('personalTraining').add({
          'name': _name,
          'phone': _phone,
          'email': _email,
          'goal': _goal,
          'workoutDuration': _workoutDuration,
          'workoutArea': _workoutArea,
          'timestamp': FieldValue.serverTimestamp(),
        });

        // Show success message
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Bilgiler başarıyla kaydedildi! Çalışma programınız en kısa sürede size gönderilecektir.',
              style: GoogleFonts.poppins(),
            ),
            backgroundColor: secondaryColor,
          ),
        );

        // Reset the form after saving
        _formKey.currentState?.reset();
      } catch (e) {
        // Handle errors
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Bir hata oluştu: $e',
              style: GoogleFonts.poppins(),
            ),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kişisel Çalışma Programı',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Name Field
                _buildTextFormField(
                  labelText: 'İsim',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen isminizi girin';
                    }
                    return null;
                  },
                  onSaved: (value) => _name = value,
                ),
                SizedBox(height: 16.0),

                // Phone Field
                _buildTextFormField(
                  labelText: 'Telefon',
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen telefon numaranızı girin';
                    }
                    return null;
                  },
                  onSaved: (value) => _phone = value,
                ),
                SizedBox(height: 16.0),

                // Email Field
                _buildTextFormField(
                  labelText: 'E-posta',
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('@')) {
                      return 'Geçerli bir e-posta adresi girin';
                    }
                    return null;
                  },
                  onSaved: (value) => _email = value,
                ),
                SizedBox(height: 16.0),

                // Goal - Dropdown
                _buildDropdownFormField(
                  labelText: 'Hedefiniz',
                  value: _goal,
                  items: [
                    'Beden Eğitimi ve Spor Öğretmenliği',
                    'Antrenörlük',
                    'Rekreasyon',
                    'Spor Yöneticiliği',
                    'Engellilerde egzersiz ve spor eğitimi',
                    'Spor Bilimleri',
                    'Egzersiz ve spor bilimleri',
                  ],
                  onChanged: (value) {
                    setState(() {
                      _goal = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen bir hedef seçin';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0),

                // Workout Duration - Radio
                _buildWorkoutDurationField(),
                SizedBox(height: 16.0),

                // Workout Area - Dropdown
                _buildDropdownFormField(
                  labelText: 'Çalışma Alanı',
                  value: _workoutArea,
                  items: ['Evde', 'Spor salonunda', 'Açık alan'],
                  onChanged: (value) {
                    setState(() {
                      _workoutArea = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Lütfen bir çalışma alanı seçin';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 24.0),

                // Submit Button
                ElevatedButton(
                  onPressed: saveDataToFirestore,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 32.0,
                    ),
                  ),
                  child: Text(
                    'Kaydet',
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Text Form Field Builder
  Widget _buildTextFormField({
    required String labelText,
    TextInputType? keyboardType,
    required FormFieldValidator<String> validator,
    required FormFieldSetter<String> onSaved,
  }) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(color: secondaryColor),
        border: OutlineInputBorder(),
      ),
      keyboardType: keyboardType,
      validator: validator,
      onSaved: onSaved,
    );
  }

  // Dropdown Form Field Builder
  Widget _buildDropdownFormField({
    required String labelText,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
    required FormFieldValidator<String> validator,
  }) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: GoogleFonts.poppins(color: secondaryColor),
        border: OutlineInputBorder(),
      ),
      value: value,
      items: items.map((item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item, style: GoogleFonts.poppins()),
        );
      }).toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }

  // Workout Duration Radio Buttons
  Widget _buildWorkoutDurationField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Günlük Çalışma Süresi',
          style: GoogleFonts.poppins(color: secondaryColor),
        ),
        Row(
          children: [
            _buildRadioButton('30-60 dk'),
            _buildRadioButton('60-90 dk'),
            _buildRadioButton('90+ dk'),
          ],
        ),
      ],
    );
  }

  // Radio Button Helper
  Widget _buildRadioButton(String value) {
    return Row(
      children: [
        Radio<String>(
          value: value,
          groupValue: _workoutDuration,
          onChanged: (value) {
            setState(() {
              _workoutDuration = value;
            });
          },
        ),
        Text(value, style: GoogleFonts.poppins()),
      ],
    );
  }
}
