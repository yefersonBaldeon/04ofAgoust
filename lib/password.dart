import 'package:flutter/material.dart';

class PasswordInputsPage extends StatefulWidget {
  @override
  _PasswordInputsPageState createState() => _PasswordInputsPageState();
}

class _PasswordInputsPageState extends State<PasswordInputsPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password-InputPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          obscureText: _obscureText,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
            ),
            border: UnderlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
