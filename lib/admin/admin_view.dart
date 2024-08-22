import 'package:barber_app/admin/admin_view_body.dart';
import 'package:flutter/material.dart';

class AdminView extends StatelessWidget {
  const AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: AdminViewBody(),
      ),
    );
  }
}