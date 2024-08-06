import 'dart:async';

import 'package:barber_app/constants.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';

class DateShudler extends StatefulWidget {
  const DateShudler({super.key});

  @override
  State<DateShudler> createState() => _DateShudlerState();
}

class _DateShudlerState extends State<DateShudler> {
  Future<void> _selectDate() async {
    // DateTime? pickedDate = await showDatePicker(
    //   context: context,
    //   firstDate: _currentDate,
    //   lastDate: DateTime(2025),
    // );
    // if (pickedDate != null) {
    //   _currentDate = pickedDate;
    //   setState(() {});
    // }
    BottomPicker.dateTime(
      pickerTitle: const Text(
        'Your session will be',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      onSubmit: (date) {
        _currentDate = date;
        setState(() {});
      },
      minDateTime: DateTime.now(),
      maxDateTime: DateTime(2025),
      initialDateTime: DateTime.now(),
      buttonSingleColor: kSecondary,
    ).show(context);
  }

  DateTime _currentDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: kSecondary,
      ),
      child: Column(
        children: [
          const Text(
            'When You are Available',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () => _selectDate(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                ),
                const SizedBox(width: 15),
                Text(
                  '${_currentDate.day} /${_currentDate.month} / ${_currentDate.year} ',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
