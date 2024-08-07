import 'package:barber_app/constants.dart';
import 'package:barber_app/models/date_picker_model.dart';
import 'package:barber_app/views/widgets/custom_date_time_picker.dart';
import 'package:flutter/material.dart';

class DateShudler extends StatelessWidget {
  const DateShudler({super.key, required this.item});
  final DatePickerModel item;

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
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          CustomDateTimePicker(
            ontap: item.ontap,
            text: item.text,
            iconData: item.iconData,
          ),
        ],
      ),
    );
  }
}
