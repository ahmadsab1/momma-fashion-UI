import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isvisible = true;
  late TextEditingController _firstnameController;
  late TextEditingController _lastnameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _firstnameController = TextEditingController();
    _lastnameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _firstnameController.dispose();
    _lastnameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Sign Up',
                style: GoogleFonts.nunito(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff23203F),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Create an account',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff716F87),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                controller: _firstnameController,
                cursorHeight: 30,
                cursorWidth: 1,
                cursorColor: const Color(0xff23203F),
                decoration: const InputDecoration(
                  hintText: 'First name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _lastnameController,
                cursorHeight: 30,
                cursorWidth: 1,
                cursorColor: const Color(0xff23203F),
                decoration: const InputDecoration(
                  hintText: 'Last name',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                cursorHeight: 30,
                cursorWidth: 1,
                cursorColor: const Color(0xff23203F),
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _phoneController,
                keyboardType: TextInputType.number,
                cursorHeight: 30,
                cursorWidth: 1,
                cursorColor: const Color(0xff23203F),
                decoration: const InputDecoration(
                  hintText: 'Phone',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: _passwordController,
                obscureText: _isvisible,
                cursorHeight: 30,
                cursorWidth: 1,
                cursorColor: const Color(0xff23203F),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isvisible = !_isvisible;
                      });
                    },
                    icon: Icon(
                      _isvisible ? Icons.visibility : Icons.visibility_off,
                      color: const Color(0xffD0D0D0),
                    ),
                  ),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    shadowColor: Colors.grey.shade100,
                    minimumSize: const Size(double.infinity, 53)),
                onPressed: () => _preformSave(),
                child: Text(
                  'Sign Up',
                  style: GoogleFonts.roboto(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _preformSave() {
    if (checkData()) {
      _save();
    }
  }

  bool checkData() {
    if (_firstnameController.text.isNotEmpty &&
        _lastnameController.text.isNotEmpty &&
        _emailController.text.isNotEmpty &&
        _phoneController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('enter required data'),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
      ),
    );
    return false;
  }

  void _save() {
    Navigator.pushNamed(
      context,
      '/verify_account',
    );
  }
}
