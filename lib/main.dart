import 'package:flutter/material.dart';
import 'package:flutter_application_2/inputs.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MyList(),
        '/avatar': (context) => AvatarPage(),
        '/alert': (context) => AlertPage(),
        '/alert2': (context) => Alert2Page(),
        '/inputs': (context) => Input(),
      },
    );
  }
}

class MyList extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'title': 'Avatar', 'subtitle': 'Ir a detalle de Avatar', 'route': '/avatar'},
    {'title': 'Alert', 'subtitle': 'Ir a detalle de Alert', 'route': '/alert'},
    {'title': 'Alert2', 'subtitle': 'Ir a detalle de Alert2', 'route': '/alert2'},
    {'title': 'Inputs', 'subtitle': 'Ir a detalle de Inputs', 'route': '/inputs'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Ejemplo'),
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

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
      ),
      body: Center(
        child: Text('Detalle de Avatar'),
      ),
    );
  }
}

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: Text('Detalle de Alert'),
      ),
    );
  }
}

class Alert2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert2 Page'),
      ),
      body: Center(
        child: Text('Detalle de Alert2'),
      ),
    );
  }
}







