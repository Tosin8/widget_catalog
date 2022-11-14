// DISCLAIMER: This is an user interface for an mobile app login screen - named: Shrine.

// MDC -101 , flutter, material components (mdc) basics.

import 'package:flutter/material.dart';

class LoginPage_Shrine extends StatefulWidget {
  const LoginPage_Shrine({super.key});

  @override
  State<LoginPage_Shrine> createState() => _LoginPage_ShrineState();
}

class _LoginPage_ShrineState extends State<LoginPage_Shrine> {
  // adding text editing controllers .

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                children: [
          const SizedBox(height: 80.0),
          Column(
            children: [
              Image.asset('assets/diamond.png'),
              const SizedBox(height: 16.0),
              const Text('SHRINE'),
            ],
          ),
          const SizedBox(height: 120.0),

          // Adding: TextField Widgets
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              filled: true,
              labelText: 'Username',
            ),
          ),
          // Spacer
          const SizedBox(height: 12.0),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              filled:
                  true, // The filled: field means teh background of the text field is lightly filled in to help people recognize the tap or touch target area of the text field.
              labelText: 'Password',
            ),
            obscureText:
                true, // oscureText: true, value automatically replaces the input that the user types with bullets, which is appropriate  for password.
          ),
          // Adding: Button bar
          OverflowBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  _usernameController.clear();
                  _passwordController.clear();
                },
                child: const Text('CANCEL'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('NEXT'),
              ),
            ],
          )
        ])));
  }
}
