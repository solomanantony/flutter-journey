import 'package:flutter/material.dart';
import 'package:mini_project/app_routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();

  final List<String> _courses = <String>[
    'Select Course',
    'BCA',
    'BBA',
    'B.Tech',
    'MCA',
  ];

  String _selectedGender = 'Male';
  String _selectedCourse = 'Select Course';
  bool _isIndian = false;
  bool _isOtherNationality = false;
  String? _selectedFileName;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _mobileController.dispose();
    _dobController.dispose();
    super.dispose();
  }

  void _register() {
    if (_firstNameController.text.trim().isEmpty ||
        _lastNameController.text.trim().isEmpty ||
        _userNameController.text.trim().isEmpty ||
        _emailController.text.trim().isEmpty ||
        _passwordController.text.trim().isEmpty ||
        _confirmPasswordController.text.trim().isEmpty ||
        _mobileController.text.trim().isEmpty ||
        _dobController.text.trim().isEmpty ||
        _selectedCourse == 'Select Course') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill all fields')),
      );
      return;
    }

    if (_passwordController.text != _confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password and confirm password must match')),
      );
      return;
    }

    Navigator.pushReplacementNamed(
      context,
      AppRoutes.products,
      arguments:
          '${_firstNameController.text.trim()} ${_lastNameController.text.trim()}',
    );
  }

  void _resetForm() {
    _firstNameController.clear();
    _lastNameController.clear();
    _userNameController.clear();
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
    _mobileController.clear();
    _dobController.clear();

    setState(() {
      _selectedGender = 'Male';
      _selectedCourse = 'Select Course';
      _isIndian = false;
      _isOtherNationality = false;
      _selectedFileName = null;
    });
  }

  InputDecoration _inputDecoration([String? hintText]) {
    return InputDecoration(
      isDense: true,
      hintText: hintText,
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    );
  }

  Widget _formRow({
    required String label,
    required Widget field,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: crossAxisAlignment,
        children: <Widget>[
          SizedBox(
            width: 88,
            child: Text(label, style: const TextStyle(fontSize: 16)),
          ),
          const SizedBox(width: 10),
          Expanded(child: field),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle labelStyle = const TextStyle(fontSize: 16);
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      appBar: AppBar(title: const Text('Register')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 430),
              child: Container(
                padding: const EdgeInsets.fromLTRB(14, 18, 14, 14),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  color: const Color(0xFFEDEDED),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Positioned(
                      top: -28,
                      left: 8,
                      child: Container(
                        color: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: const Text(
                          'Registration Form',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        _formRow(
                          label: 'First Name:',
                          field: TextField(
                            controller: _firstNameController,
                            decoration: _inputDecoration(),
                          ),
                        ),
                        _formRow(
                          label: 'Last Name:',
                          field: TextField(
                            controller: _lastNameController,
                            decoration: _inputDecoration(),
                          ),
                        ),
                        _formRow(
                          label: 'User Name:',
                          field: TextField(
                            controller: _userNameController,
                            decoration: _inputDecoration(),
                          ),
                        ),
                        _formRow(
                          label: 'Password:',
                          field: TextField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: _inputDecoration(),
                          ),
                        ),
                        _formRow(
                          label: 'Confirm\nPassword:',
                          crossAxisAlignment: CrossAxisAlignment.start,
                          field: TextField(
                            controller: _confirmPasswordController,
                            obscureText: true,
                            decoration: _inputDecoration(),
                          ),
                        ),
                        _formRow(
                          label: 'Email:',
                          field: TextField(
                            controller: _emailController,
                            decoration: _inputDecoration(),
                          ),
                        ),
                        _formRow(
                          label: 'Mobile:',
                          field: TextField(
                            controller: _mobileController,
                            keyboardType: TextInputType.phone,
                            decoration: _inputDecoration(),
                          ),
                        ),
                        const SizedBox(height: 6),
                        _formRow(
                          label: 'Gender:',
                          field: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Radio<String>(
                                    value: 'Male',
                                    groupValue: _selectedGender,
                                    visualDensity: VisualDensity.compact,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _selectedGender = value ?? 'Male';
                                      });
                                    },
                                  ),
                                  Text('Male', style: labelStyle),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Radio<String>(
                                    value: 'Female',
                                    groupValue: _selectedGender,
                                    visualDensity: VisualDensity.compact,
                                    onChanged: (String? value) {
                                      setState(() {
                                        _selectedGender = value ?? 'Female';
                                      });
                                    },
                                  ),
                                  Text('Female', style: labelStyle),
                                ],
                              ),
                            ],
                          ),
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        _formRow(
                          label: 'DOB:',
                          field: TextField(
                            controller: _dobController,
                            decoration: _inputDecoration('dd-----yyyy'),
                          ),
                        ),
                        _formRow(
                          label: 'Course:',
                          field: DropdownButtonFormField<String>(
                            value: _selectedCourse,
                            decoration: _inputDecoration(),
                            items: _courses
                                .map(
                                  (String course) => DropdownMenuItem<String>(
                                    value: course,
                                    child: Text(course),
                                  ),
                                )
                                .toList(),
                            onChanged: (String? value) {
                              setState(() {
                                _selectedCourse = value ?? 'Select Course';
                              });
                            },
                          ),
                        ),
                        _formRow(
                          label: 'Nationality:',
                          field: Row(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: _isIndian,
                                    visualDensity: VisualDensity.compact,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _isIndian = value ?? false;
                                      });
                                    },
                                  ),
                                  Text('Indian', style: labelStyle),
                                ],
                              ),
                              const SizedBox(width: 8),
                              Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: _isOtherNationality,
                                    visualDensity: VisualDensity.compact,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        _isOtherNationality = value ?? false;
                                      });
                                    },
                                  ),
                                  Text('Others', style: labelStyle),
                                ],
                              ),
                            ],
                          ),
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        _formRow(
                          label: 'Profile:',
                          crossAxisAlignment: CrossAxisAlignment.start,
                          field: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 2),
                              Container(
                                width: 92,
                                height: 108,
                                color: const Color(0xFFF2F2F2),
                                alignment: Alignment.center,
                                child: const Icon(
                                  Icons.account_circle,
                                  size: 90,
                                  color: Colors.black45,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Row(
                                children: <Widget>[
                                  OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        _selectedFileName = 'profile.png';
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(
                                        color: Colors.black45,
                                      ),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                      ),
                                    ),
                                    child: const Text('Choose file'),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      _selectedFileName ?? 'No file chosen',
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: _register,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE0E0E0),
                                foregroundColor: Colors.black,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                              child: const Text('Submit'),
                            ),
                            const SizedBox(width: 12),
                            ElevatedButton(
                              onPressed: _resetForm,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFE0E0E0),
                                foregroundColor: Colors.black,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                              child: const Text('Reset'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
