void learningFunctions2(){

  printMessage("Hello Class", "Umair");
  // printMessage("Umair", "This is secret Message");

  printMessage("Hello World");

  printName(name: "Khalid", title: "Engr");
  printName(title: "Engr", name: "Khalid");
  printName();
  printName(name: 'Hammad');
  printName(title: 'Dr', name: 'Umair');

}
// optional positional parameter
void printMessage(String message, [String sender="Anonymous"]){
  print("$message from $sender");
}
// named parameters
void printName({String name="Guest", String title="Mr/Ms"}){
  print("Hello $title. $name");
}