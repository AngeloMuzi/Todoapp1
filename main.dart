import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 79, 9, 199)),
        useMaterial3: true,
      ),
      home: IntroScreen(),
    );
  }
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF121212),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/images/Vector.png'),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'UpTodo',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ));
  }
}
