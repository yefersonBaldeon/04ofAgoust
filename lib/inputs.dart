import 'package:flutter/material.dart';
import 'package:flutter_application_2/calendar.dart';
import 'package:flutter_application_2/capturar.dart';
import 'package:flutter_application_2/password.dart';

class Input extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => Inputs(),
        '/general-inputs': (context) => GeneralInputsPage(),
        '/password-inputs': (context) => PasswordInputsPage(),
        '/capture-values': (context) => CaptureValuesPage(),
        '/calendar-input': (context) => CalendarInputPage(),
  
      },
    );
  }
}



class GeneralInputsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Inputs Page'),
      ),
      body: Center(
        child: Text('Detalle de General-Inputs'),
      ),
    );
  }
}

class Inputs extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'title': 'General-Inputs',
      'subtitle': 'Ir a detalle de General-Inputs',
      'route': '/general-inputs'
    },
    {
      'title': 'Password-Inputs',
      'subtitle': 'Ir a detalle de Password-Inputs',
      'route': '/password-inputs'
    },
    {
      'title': 'Captura Valores del Input Page',
      'subtitle': 'Ir a detalle de Captura Valores del Input Page',
      'route': '/capture-values'
    },
    {
      'title': 'Calendar Input Page',
      'subtitle': 'Ir a detalle de Calendar Input Page',
      'route': '/calendar-input'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Ejemplo'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.popUntil(context, ModalRoute.withName('/'));
          },
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.check_circle),
            title: Text(items[index]['title']!),
            subtitle: Text(items[index]['subtitle']!),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, items[index]['route']!);
            },
          );
        },
      ),
    );
  }
}
