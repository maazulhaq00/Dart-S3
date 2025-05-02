void main(){

  String name = "Maaz Ul Haq";
  int age = 22;
  double percentage = 78.9;
  bool isStudent = true;

  print('''
Name = $name
Age = $age
Percentage = $percentage
isStudent = $isStudent
''');

// type casting

int percentageInt = percentage.toInt();
String percentageStr = percentage.toString();

print("percentage = $percentageInt, type = ${percentageInt.runtimeType}");
print("percentage = $percentageStr, type = ${percentageStr.runtimeType}");

String a = "12";

int a1 = int.parse(a);
double a2 = double.parse(a);



}