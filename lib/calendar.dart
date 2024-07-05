import 'package:flutter/material.dart';

class CalendarInputPage extends StatefulWidget {
  @override
  _CalendarInputPageState createState() => _CalendarInputPageState();
}

class _CalendarInputPageState extends State<CalendarInputPage> {
  TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CalendarPage'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _dateController,
          decoration: InputDecoration(
            hintText: 'Select Date',
            suffixIcon: IconButton(
              icon: Icon(Icons.calendar_today),
              onPressed: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101),
                );

                if (pickedDate != null) {
                  setState(() {
                    _dateController.text = pickedDate.toString().split(' ')[0];
                  });
                }
              },
            ),
          ),
          readOnly: true,
        ),
      ),
    );
  }
}
