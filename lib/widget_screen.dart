import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator/calculator_controller.dart';

class ShowScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CalculatorController controller = Get.find();

    return Expanded(
      child: SingleChildScrollView(
        reverse: true,
        child: Container(
          width: double.infinity,
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Obx(() => Text(
                    controller.input.value,
                    style: const TextStyle(fontSize: 48, color: Colors.white),
                  )),
              const SizedBox(height: 20),
              Obx(() => Text(
                    controller.output.value,
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
