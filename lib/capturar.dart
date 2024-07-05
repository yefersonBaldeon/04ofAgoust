import 'package:flutter/material.dart';

class CaptureValuesPage extends StatefulWidget {
  @override
  _CaptureValuesPageState createState() => _CaptureValuesPageState();
}

class _CaptureValuesPageState extends State<CaptureValuesPage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController(text: 'Por defecto');
  final FocusNode _focusNode = FocusNode();
  String _value = '';

  void _showKeyboard() {
    FocusScope.of(context).requestFocus(_focusNode);
  }

  void _printValues() {
    print('Valor del primer input: ${_controller1.text}');
    print('Valor del segundo input: ${_controller2.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capturando Inputs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller1,
              focusNode: _focusNode,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Ingrese tu nombre (solo números)',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _controller2,
              decoration: InputDecoration(
                labelText: 'Ingrese tu nombre',
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: _showKeyboard,
                    child: Text('Teclado'),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _printValues,
                    child: Text('Mostrar Valores en Consola'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Teclados',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(_value),
          ],
        ),
      ),
    );
  }
}
