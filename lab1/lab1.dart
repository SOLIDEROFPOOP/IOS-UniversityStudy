import 'dart:io';

void main() {
  print("Welcome to the Console Calculator!");

  while (true) {
    stdout.write("Enter the first number: ");
    double num1 = double.tryParse(stdin.readLineSync() ?? '');
    if (num1 == null) {
      print("Invalid input. Please enter a valid number.");
      continue;
    }

    stdout.write("Enter the second number: ");
    double num2 = double.tryParse(stdin.readLineSync() ?? '');
    if (num2 == null) {
      print("Invalid input. Please enter a valid number.");
      continue;
    }

    stdout.write(
        "Enter the operator (+, -, *, /, ^ for exponentiation, sqrt for square root): ");
    String? operator = stdin.readLineSync();

    if (operator == null || !isValidOperator(operator)) {
      print("Invalid operator. Please enter a valid operator.");
      continue;
    }

    double result = performOperation(num1, num2, operator);
    if (result.isNaN) {
      print("Error: Division by zero.");
    } else {
      print("Result: $result");
    }

    stdout.write("Do you want to perform another calculation? (yes/no): ");
    String? continueChoice = stdin.readLineSync()?.toLowerCase();
    if (continueChoice != 'yes') {
      break;
    }
  }

  print("Goodbye!");
}

bool isValidOperator(String operator) {
  return operator == '+' ||
      operator == '-' ||
      operator == '*' ||
      operator == '/' ||
      operator == '^' ||
      operator == 'sqrt';
}

double performOperation(double num1, double num2, String operator) {
  switch (operator) {
    case '+':
      return add(num1, num2);
    case '-':
      return subtract(num1, num2);
    case '*':
      return multiply(num1, num2);
    case '/':
      return divide(num1, num2);
    case '^':
      return exponentiate(num1, num2);
    case 'sqrt':
      return squareRoot(num1);
    default:
      return double.nan;
  }
}

double add(double a, double b) => a + b;

double subtract(double a, double b) => a - b;

double multiply(double a, double b) => a * b;

double divide(double a, double b) => b != 0 ? a / b : double.nan;

double exponentiate(double base, double exponent) => base.pow(exponent.toInt());

double squareRoot(double num) => num >= 0 ? num.sqrt() : double.nan;
