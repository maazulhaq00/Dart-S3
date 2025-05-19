void learningOOPs2() {

  CurrentAccount ca1 = CurrentAccount("Hunain", 0987, 50, 100);

  ca1.withdraw(0987, 50); // ov: 50 b: 50
  ca1.withdraw(0987, 100); // ov: 50 b: -50 
  ca1.withdraw(0987, 100); 
  
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

class SavingAccount extends BankAccount {
  var interestRate;

  SavingAccount(
    String accountHolder,
    int pin,
    double interestRate, [
    int balance = 0,
  ]) : super(accountHolder, pin, balance) {
    // this.accountHolder = accountHolder;
    // this.pin = pin;
    // this.balance = balance;

    this.interestRate = interestRate;
  }

  void addInterestAmount() {
    double interestAmount = balance * interestRate / 100;

    balance += interestAmount;

    print(
      "Dear $accountHolder, interest amount Rs. $interestAmount creditted to your account. Your account balance is Rs. $balance.",
    );
  }
}

class CurrentAccount extends BankAccount {
  var overDarftLimit;

  CurrentAccount(
    String accountHolder,
    int pin,
    double overDarftLimit, [
    int balance = 0,
  ]) : super(accountHolder, pin, balance) {
    this.overDarftLimit = overDarftLimit;
  }

  @override
  void withdraw(int inputPin, int amount) {
    if (inputPin == this.pin) {
      // this.balance = this.balance - amount;
      if (amount <= this.balance + this.overDarftLimit) {
        this.balance -= amount;

        print(
          "Dear $accountHolder, amount withdrawn (overdraft) successfully. Your updated balance is Rs. $balance.",
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
