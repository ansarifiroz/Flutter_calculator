import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator/calculator_controller.dart';

class HistoryScreen extends StatelessWidget {
  final CalculatorController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text("History"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              _showClearHistoryDialog(context);
            },
          ),
        ],
      ),
      body: Obx(() {
        if (controller.history.isEmpty) {
          return const Center(
            child: Text(
              "No History Available",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        }
        return ListView.builder(
          itemCount: controller.history.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                controller.history[index],
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        );
      }),
    );
  }

  void _showClearHistoryDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(255, 49, 48, 48),
          title: Align(
            alignment: Alignment.center,
            child: const Text(
              "Clear",
              style: TextStyle(color: Colors.white),
            ),
          ),
          content: const Text(
            "Clear History now?",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                controller.history.clear();
                Navigator.of(context).pop();
              },
              child: const Text(
                "Clear",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
