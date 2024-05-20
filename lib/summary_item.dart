import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});
  final Map<String, Object> itemData;
  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   ((data['question_index'] as int) + 1).toString(),
            //   style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            // ),
            QuestionIdentifier(
                isCorrectAnswer, itemData['question_index'] as int),
            const SizedBox(
              width: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(itemData['question'].toString(),
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    itemData['user_answer'].toString(),
                    style: const TextStyle(color: Colors.black87),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    itemData['correct_answer'].toString(),
                    style: const TextStyle(color: Colors.teal),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
