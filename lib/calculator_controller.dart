import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var input = ''.obs;
  var output = ''.obs;
  var history = [].obs;

  void onButtonClick(String value) {
    if (value == "AC") {
      input.value = '';
      output.value = '';
    } else if (value == "Del") {
      if (input.value.isNotEmpty) {
        input.value = input.value.substring(0, input.value.length - 1);
      }
    } else if (value == "=") {
      try {
        var userInput = input.value
            .replaceAll("x", "*")
            .replaceAll("÷", "/")
            .replaceAll("%", "/100");
        var parser = Parser();
        var expression = parser.parse(userInput);
        var cm = ContextModel();
        var result = expression.evaluate(EvaluationType.REAL, cm).toString();

        history.add("${input.value} = $result");

        output.value = result;
      } catch (e) {
        output.value = "Error";
      }
    } else {
      input.value += value;
    }
  }
}
