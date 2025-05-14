void learningFunctions() {
  Map<String, double> studentsScores1 = {
    "Nousheen": 78.5,
    "Ammar": 86.2,
    "Faraz": 90.1,
    "Hammad": 79.8,
    "Hunain": 55,
  };
  double avg1 = calculateAverage(studentsScores1);
  print("Average is $avg1");

  Map<String, double> studentsScores2 = {
    "A": 80,
    "B": 90,
    "C": 100
  };
  double avg2 = calculateAverage(studentsScores2);
  print("Average is $avg2");
}

// ReturnType FunctionName(Parameters){
//   Body
//   return Data of type ReturnType
// }

double calculateAverage(Map<String, double> scores) {
  
  double totalScore = 0;
  int totalStudents = scores.length;

  for (var score in scores.values) {
    // totalScore = totalScore + score;
    totalScore += score;
  }

  double savg = totalScore/totalStudents;


  return savg;
}
