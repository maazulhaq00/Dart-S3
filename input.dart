import 'dart:io';

void learningInputs(){
  // String num1 = "apple";

  // var num2 = num.tryParse(num1);
  // print(num2);
  // num1 = "abc";

  print("Enter your name: ");
  String? name = stdin.readLineSync();

  print("Enter your birth year");
  String? birthYearStr = stdin.readLineSync();
  int? birthYear = int.tryParse(birthYearStr!);

  if(name != null && birthYear != null){
    int currentYear = DateTime.now().year;
    int age = currentYear - birthYear;

    print("Dear $name, your age is $age years old");
  }
  else{
    print("Invalid Inputs");
  }

}