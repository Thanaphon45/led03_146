import 'dart:isolate';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtre1 = TextEditingController();
  final TextEditingController _passwordCtre1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 246, 248),
      appBar: AppBar(
        title: const Text("Coo PER app"),
        backgroundColor: const Color.fromARGB(255, 0, 114, 122),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameCtre1,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Username",
                  prefixIcon: const Icon(Icons.person),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 46, 1, 105))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 46, 1, 105))),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                height: 16,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "pls entrt your username";
                }
                return null;
              },
              obscureText: true,
              obscuringCharacter: "*",
              controller: _passwordCtre1,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "password",
                prefixIcon: const Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 46, 1, 105))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 46, 1, 105))),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                print("onPressed");
                if (_loginFormKey.currentState!.validate()) {}
              },
              child: const Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
