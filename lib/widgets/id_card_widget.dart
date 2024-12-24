import 'package:flutter/material.dart';
import '../models/user_data.dart';

class IDCardWidget extends StatelessWidget {
  final UserData userData;

  const IDCardWidget({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Container(
        width: 320,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
              child: Text(
                'IDENTIFICATION CARD',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Divider(height: 32),
            Text('Name: ${userData.name}'),
            const SizedBox(height: 8),
            Text('ID Number: ${userData.idNumber}'),
            const SizedBox(height: 8),
            Text('Address: ${userData.address}'),
          ],
        ),
      ),
    );
  }
}