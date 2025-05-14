void learningOOPs(){

  BankAccount ba1 = BankAccount("Ammar", 2233, 2000);
  BankAccount ba2 = BankAccount("Khalid", 4456);

  print(ba1.accountHolder);
  print(ba1.pin);
  print(ba1.balance);

  print(ba2.accountHolder);
  print(ba2.pin);
  print(ba2.balance);

}


class BankAccount {
  
  var accountHolder, pin, balance;

  BankAccount(String accountHolder, int pin, [int balance=0]){
    
    print("Object Created");

    this.accountHolder = accountHolder;
    this.pin = pin;
    this.balance = balance;
  }


}