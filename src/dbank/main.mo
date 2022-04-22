import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 300;
  currentValue := 100;
  currentValue := 40000;

  let id = 35646854182316451;
  // Debug.print(debug_show(id));

  public func topUp(amount: Nat){
    currentValue += amount;
    Debug.print(debug_show(currentValue))
  };

  // topUp();
}

