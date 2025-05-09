void learningIterables() {
  List<String> students = ["nausheen", "khalid", "ammar"];

  List<int> age = [22, 33, 44];

  List<dynamic> student1 = ["Hunain", 16, true];

  print(students[0]);

  students.add("Hammad");
  students.addAll(["Hassan", "Ayyan"]);

  students.insert(2, "Ali");
  students.insertAll(3, ["Faraz", "Umair"]);

  print(students);

  for (var std in students) {
    print("student name is " + std);
    if (std == "Umair") {
      print("Teacher name is maaz");
    }
  }

  for (int i = 0; i < students.length; i++) {
    print("student name is " + students[i]);

    if (i == 4) {
      print("Teacher name is maaz");
    }
  }

  students.remove("Hammad");
  print(students);

  students.removeAt(5);
  print(students);

  students.clear();
  print(students);
}
