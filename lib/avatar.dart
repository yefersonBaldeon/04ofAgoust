import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Avatar Page'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text(
              'C',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        color: Colors.orange,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://libero.cronosmedia.glr.pe/original/2022/09/09/631bb2d0dd4ed9264b10e024.jpg'), // Reemplaza con la URL de tu imagen
                backgroundColor: Colors.black,
              ),
              SizedBox(height: 10),
              Text(
                'Arturo Solis',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
              ),
              SizedBox(height: 20),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.orange),
                  title: Text('+51 940172709'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.orange),
                  title: Text('asolisf@uncp.edu.pe'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
