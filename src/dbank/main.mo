import Debug "mo:base/Debug";

actor DBank {
  stable var currentValue: Nat = 300;
  // currentValue := 40000;

  let id = 35646854182316451;
  // Debug.print(debug_show(id));

  public func topUp(amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

// Allow users to withdraw an amount from the currentValue
// Decrease the currentValue by the amount

  public func withdrawl(amount: Nat) {
    let tempValue: Int = currentValue - amount;
    if (tempValue >= 0){
    currentValue -= amount;
    Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount too Large, currentValue less than zero.")
    }
  };

  public query func checkBalance(): async Nat {
    return currentValue;

  };

  //topUp();
}

