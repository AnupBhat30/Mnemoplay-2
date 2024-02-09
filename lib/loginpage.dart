import 'package:flutter/material.dart';
import 'package:learning/mainpage.dart';
import 'package:learning/userpage.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  String _passwordLabelText = 'Enter your password';
  String _username = '';
  String _password = '';
  String _confirmPassword = '';

  void _saveUsername() {
    setState(() {
      _username = _usernameController.text;
    });
  }

  void _savePassword() {
    setState(() {
      _password = _passwordController.text;
    });
  }

  void _checkPasswordConfirmation(BuildContext context) {
    setState(() {
      _confirmPassword = _confirmPasswordController.text;
    });
    if (_password == _confirmPassword && _username.isNotEmpty && _password.isNotEmpty) {
      // First navigate to MainPage
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage(username: _username)));
    } else {
      setState(() {
        _passwordController.clear();
        _confirmPasswordController.clear();
        _passwordLabelText = 'Passwords do not match, try again';
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF6F4E37),
        title: const Text(
          'Login',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: Image.asset(
              'assets/temp/logo1.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 36,
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Urbanist',
                      ),
                      children: [
                        TextSpan(
                          text: 'MNEMO',
                          style: TextStyle(
                            color: Color(0xFF6F4E37),
                          ),
                        ),
                        TextSpan(
                          text: 'PLAY',
                          style: TextStyle(
                            color: Color(0xff6F4E37),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Enter your username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F4E37),
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _usernameController,
                  onEditingComplete: () {
                    _saveUsername();
                    FocusScope.of(context).nextFocus();
                  },
                  decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: Color(0xFFF7E7CE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Enter your password',
                  style: TextStyle(
                    color: Color(0xFF6F4E37),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  onEditingComplete: () {
                    _savePassword();
                    FocusScope.of(context).nextFocus();
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    labelText: _passwordLabelText,
                    filled: true,
                    fillColor: Color(0xFFF7E7CE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Confirm your password',
                  style: TextStyle(
                    color: Color(0xFF6F4E37),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  onEditingComplete: () {
                    _checkPasswordConfirmation(context);
                  },
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    filled: true,
                    fillColor: Color(0xFFF7E7CE),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 200,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 15,
                          offset: const Offset(0, 15),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        _checkPasswordConfirmation(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF7E7CE),
                        padding:
                        const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        elevation: 20,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 23,
                          color: Color(0xFF6F4E37),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'Or',
                    style: TextStyle(
                      color: Color(0xFF6F4E37),
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF7E7CE),
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(15),
                            elevation: 20,
                          ),
                          child: Image.asset('assets/images/goo.png', height: 22, width: 22),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF7E7CE),
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(15),
                            elevation: 20,
                          ),
                          child: Image.asset('assets/images/fbb.png', height: 22, width: 22),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        color: Color(0xFF6F4E37),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/user');
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.blue,
                    ),
                    child: const Text(
                      'Create new account',
                      style: TextStyle(
                        color: Color(0xFF6F4E37),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}