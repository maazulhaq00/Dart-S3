void learningSets(){
  Set<String> courses = { "Dart", "ASP.NET", "Flutter", "ASP.NET"};
  Set<String> newCourses = {"Python", "Deep Learning", "MERN", "Dart", "ASP.NET"};

  print(courses);
  print(courses.elementAt(2));

  for (var course in courses) {
    print(course);    
  }
  
  courses.forEach((course) { print(course); });

  print(courses.union(newCourses));
  print(courses.intersection(newCourses));
  print(courses.difference(newCourses));
  print(newCourses.difference(courses));


}