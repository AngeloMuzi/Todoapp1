import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.white,
          onPressed: () {},
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(27),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 17, 17, 17),
              Color.fromARGB(255, 17, 17, 17),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(),
            const CupertinoTextField(
              cursorColor: Color.fromARGB(255, 255, 255, 255),
              padding: EdgeInsets.all(15),
              placeholder: 'Enter your username',
              placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  )),
            ),
            SizedBox(height: 30),
            Center(
                child: Row(
              children: [
                Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                  ),
                )
              ],
            )),
            SizedBox(height: 10),
            const CupertinoTextField(
              padding: EdgeInsets.all(15),
              placeholder: '**********',
              cursorColor: Color.fromARGB(255, 255, 255, 255),
              obscureText: true,
              placeholderStyle: TextStyle(color: Colors.white70, fontSize: 14),
              style: TextStyle(color: Colors.white, fontSize: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
              ),
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: CupertinoButton(
                padding: const EdgeInsets.all(1),
                color: const Color(0xFF8687E7),
                child: const Text(
                  "Acessar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/vetor1.png')),
                Image(image: AssetImage('assets/images/vetor2.png')),
                Image(image: AssetImage('assets/images/vetor3.png')),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              child: OutlinedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/google(1).png'),
                    Text(
                      '  Login with Google',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              child: OutlinedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/apple.png'),
                    Text(
                      '  Login with Apple',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
