import 'package:barber_app/constants.dart';
import 'package:barber_app/models/date_picker_model.dart';
import 'package:barber_app/views/widgets/date_shudler.dart';
import 'package:bottom_picker/bottom_picker.dart';
import 'package:flutter/material.dart';

class DateShedulerGroup extends StatefulWidget {
  const DateShedulerGroup({super.key});

  @override
  State<DateShedulerGroup> createState() => _DateShedulerGroupState();
}

class _DateShedulerGroupState extends State<DateShedulerGroup> {
  Future<void> _selectDate() async {
    BottomPicker.date(
      pickerTitle: const Text(
        'Set a date',
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

  Future<void> _selectTime() async {
    BottomPicker.time(
      initialTime: Time.now(),
      pickerTitle: const Text(
        'Set a time',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Colors.black,
        ),
      ),
      onSubmit: (time) {
        _currentTime = TimeOfDay.fromDateTime(time);
        setState(() {});
      },
      buttonSingleColor: kSecondary,
    ).show(context);
  }

  DateTime _currentDate = DateTime.now();
  TimeOfDay _currentTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DateShudler(
          item: DatePickerModel(
              title: 'Set your Date',
              text:
                  '${_currentDate.day}/${_currentDate.month}/${_currentDate.year}',
              iconData: Icons.calendar_month,
              ontap: _selectDate),
        ),
        const SizedBox(height: 30),
        DateShudler(
          item: DatePickerModel(
              title: 'Set your Time',
              text: _currentTime.format(context),
              iconData: Icons.alarm,
              ontap: _selectTime),
        ),
      ],
    );
  }
}
