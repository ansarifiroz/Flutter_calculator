import 'package:calculator/buttons.dart';
import 'package:calculator/history.dart';
import 'package:calculator/widget_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator/calculator_controller.dart';

class DisplayScreen extends StatelessWidget {
  final CalculatorController controller = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => HistoryScreen()); // Navigate to History
                  },
                  child: const Icon(
                    Icons.history,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            ShowScreen(),
            const Divider(
              color: Colors.grey,
              thickness: 0.2,
              endIndent: 15,
              indent: 15,
            ),
            ButtonsScreen(),
          ],
        ),
      ),
    );
  }
}
