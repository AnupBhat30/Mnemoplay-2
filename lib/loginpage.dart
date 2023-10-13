import 'package:flutter/material.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          'Login',
          style: TextStyle(
            color: Color(0xFF907F9F),
            fontSize: 45,
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
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 36,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Urbanist',
                        ),
                        children: [
                          TextSpan(
                            text: 'MNEMO',
                          ),
                          TextSpan(
                            text: 'PLAY',
                            style: TextStyle(
                              color: Colors.black, // Change the color of "PLAY" to black
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Enter your username',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Enter your password',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                      ),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                            offset: Offset(0, 15),
                          ),
                        ],
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/main');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFFFFF),
                          padding:
                          EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                          elevation: 20,
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFF907F9F),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Or',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(15),
                              elevation: 20,
                            ),
                            child: Image.asset('assets/images/goo.png',
                                height: 22, width: 22),
                          ),
                        ),
                        SizedBox(width: 20),
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
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFFFFFFF),
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(15),
                              elevation: 20,
                            ),
                            child: Image.asset('assets/images/fbb.png',
                                height: 22, width: 22),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                        ),
                        child: Text(
                          'Create new account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}