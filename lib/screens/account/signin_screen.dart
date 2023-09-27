import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isvisible = true;
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: GoogleFonts.nunito(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color(0xff23203F),
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              'Login to start using app,',
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
              controller: _emailController,
              cursorHeight: 30,
              cursorWidth: 1,
              cursorColor: const Color(0xff23203F),
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(
              height: 35,
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
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 20,
                shadowColor: Colors.black.withOpacity(0.6),
              ),
              onPressed: () => _preformSave(),
              child: Text(
                'Login',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff9391A4),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    visualDensity: const VisualDensity(
                      vertical: VisualDensity.minimumDensity,
                    ),
                  ),
                  onPressed: () => Navigator.pushNamed(
                    context,
                    '/sign_up_screen',
                  ),
                  child: Text(
                    'Sign up',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff23203F),
                    ),
                  ),
                ),
              ],
            ),
          ],
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
    if (_emailController.text.isNotEmpty &&
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
      '/bottom_bar_screen',
    );
  }
}
