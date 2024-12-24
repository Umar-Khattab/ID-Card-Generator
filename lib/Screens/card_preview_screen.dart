import 'package:flutter/material.dart';
import '../models/user_data.dart';
import '../widgets/id_card_widget.dart';

class CardPreviewScreen extends StatelessWidget {
  final UserData userData;

  const CardPreviewScreen({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ID Card Preview')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IDCardWidget(userData: userData),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement save functionality
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('ID Card saved successfully!')),
                  );
                },
                child: const Text('Save ID Card'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
