import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 300,
            color: Colors.teal,
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            iconAlignment: IconAlignment.end,
            icon: const Icon(Icons.arrow_right_alt_outlined),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.teal),
            label: const Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
