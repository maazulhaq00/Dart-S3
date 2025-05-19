import 'dart:io';

void learningException() {
  while (true) {
    try {
      print("Enter a number: ");
      int num1 = int.parse(stdin.readLineSync()!);
      print("Num = $num1");
      break;
    } catch (err) {
      print("Invalid number entered");
    }
  }

  print("After TRY CATCH");
}
