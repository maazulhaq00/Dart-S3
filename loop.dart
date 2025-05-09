import 'dart:io';

void learningLoops(){
  print("======== Math Table ============");

  print("Enter a number: ");

  int? number = int.tryParse(stdin.readLineSync()!);

  if(number != null){
    
    for(int i = 1; i <= 10; i++){
      print("$number x $i = ${number*i}");
    }

  }
  else{
    print("Invalid Number");
  }

}