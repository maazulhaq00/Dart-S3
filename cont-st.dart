import "dart:io";

void learningIfElse(){

    print("Enter your percentage : ");

    double? percentage = double.tryParse(stdin.readLineSync()!);

    if(percentage != null){
        
        String grade = "";

        // yaha grade calc wala kaam hoga
        if(percentage <= 100 && percentage >=75){
            grade = "DISTINCTION";
        }
        else if(percentage < 75 && percentage >= 60){
            grade = "CREDIT";
        }
        else if(percentage < 60 && percentage >=40){
            grade = "PASS";
        }
        else if(percentage < 40 && percentage >= 0){
            grade = "FAIL";
        }
        else{
            grade = "Invalid Percentage";
        }
        print(grade);
    }
    else{
        print("Invalid Input.");
    }
}