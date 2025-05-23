void learningOOPs() {
  BankAccount ba1 = BankAccount("Ammar", 2233, 2000);
  BankAccount ba2 = BankAccount("Khalid", 4456);

  // print(ba1.accountHolder);
  // print(ba1.pin);
  // print(ba1.balance);

  // print(ba2.accountHolder);
  // print(ba2.pin);
  // print(ba2.balance);

  ba1.checkBalance(1234);
  
  ba1.checkBalance(2233);

  ba1.deposit(1234, 1000);
  
  ba1.deposit(2233, 1000);

  ba1.withdraw(2233, 1200);

  ba1.withdraw(2233, 2000);
}

class BankAccount {
  var accountHolder, pin, balance;

  BankAccount(String accountHolder, int pin, [int balance = 0]) {
    // print("Object Created");

    this.accountHolder = accountHolder;
    this.pin = pin;
    this.balance = balance;
  }

  void checkBalance(int inputPin) {
    if (inputPin == this.pin) {
      print("Dear $accountHolder, your current balance is Rs. $balance.");
    } else {
      print("Sorry, pin is incorrect");
    }
  }
  void deposit(int inputPin, int amount) {
    if (inputPin == this.pin) {
      // this.balance = this.balance + amount;
      this.balance += amount;

      print(
        "Dear $accountHolder, amount depositted successfully. Your updated balance is Rs. $balance.",
      );
    } else {
      print("Sorry, pin is incorrect");
    }
  }
  void withdraw(int inputPin, int amount) {
    if (inputPin == this.pin) {
      // this.balance = this.balance - amount;
      if (amount <= this.balance) {
        this.balance -= amount;

        print(
          "Dear $accountHolder, amount withdrawn successfully. Your updated balance is Rs. $balance.",
        );
      } else {

        print(
          "Dear $accountHolder, you account balance is insufficient to make this transaction. Your current balance is Rs. $balance.",
        );

      }
    } else {
      print("Sorry, pin is incorrect");
    }
  }
}
