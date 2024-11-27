import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator/calculator_controller.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final CalculatorController controller = Get.find();

    Widget calButton(String btnTxt, Color btnColor, Color txtColor) {
      return TextButton(
        onPressed: () => controller.onButtonClick(btnTxt),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(btnColor),
        ),
        child: Text(
          btnTxt,
          style: TextStyle(fontSize: 30, color: txtColor),
        ),
      );
    }

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calButton("AC", Colors.amber, Colors.white),
            calButton("Del", Colors.amber, Colors.white),
            calButton("%", Colors.amber, Colors.white),
            calButton("÷", Colors.amber, Colors.white),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calButton("7", Colors.grey.shade400, Colors.white),
            calButton("8", Colors.grey.shade400, Colors.white),
            calButton("9", Colors.grey.shade400, Colors.white),
            calButton("x", Colors.amber, Colors.white),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calButton("4", Colors.grey.shade400, Colors.white),
            calButton("5", Colors.grey.shade400, Colors.white),
            calButton("6", Colors.grey.shade400, Colors.white),
            calButton("-", Colors.amber, Colors.white),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            calButton("1", Colors.grey.shade400, Colors.white),
            calButton("2", Colors.grey.shade400, Colors.white),
            calButton("3", Colors.grey.shade400, Colors.white),
            calButton("+", Colors.amber, Colors.white),
          ],
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.grey.shade400,
                  ),
                ),
                onPressed: () => controller.onButtonClick("0"),
                child: const Text(
                  "0",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
            calButton(".", Colors.grey.shade400, Colors.white),
            calButton("=", Colors.amber, Colors.white),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
