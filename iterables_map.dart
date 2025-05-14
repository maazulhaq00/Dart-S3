void learning_map(){
    
    Map<String, double> studentsScore = {
        "Nousheen": 78.5,
        "Ammar": 86.2,
        "Faraz": 90.1,
        "Hammad": 79.8,
        "Hunain": 55
    };

    Map<int, String> positions = {
        10: "hassan",
        18: "nousheen",
        15: "faraz"
    };

    print(studentsScore["Faraz"]);
    print(positions[15]);

    studentsScore.forEach((key, value){
        print("$key ==> $value");
    });

    print(studentsScore.keys);
    print(studentsScore.values);
    print(studentsScore.entries);

    for (var name in studentsScore.keys) {
      
      print("$name has ${studentsScore[name]} scores");

    }

    for (var score in studentsScore.values){
        print("Scores are $score");
    }

    for(var entry in studentsScore.entries){
        print("${entry.key} has ${entry.value} scores");
    }

    print(studentsScore.containsKey("Khalid")); // false
    print(studentsScore.containsKey("Ammar")); // true
    print(studentsScore.containsValue("Ammar")); // false

}