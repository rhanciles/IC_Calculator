import Float "mo:base/Float";

// Step 1 -  Define a mutable variable called `counter`.
actor _Calculator {

  var counter : Float = 0;

  // Step 2 - Implement add
  public func add(x : Float) : async Float {
    counter += x;
    return counter;
  };

  // Step 3 - Implement subtract
  public func sub(x : Float) : async Float {
    counter -= x;
    return counter;
  };

  // Step 4 - Implement Multiply.
  public func mul(x : Float) : async Float {
    counter *= x;
    return counter;
  };

  // Step 5 - Implement Divide.
  public func div(x : Float) : async ?Float {
    counter /= x;
    return ?counter;
  };

  // Step 6 - Implement reset - Clear calculator and reset counter to zero.
  public func reset() : async () {
    counter := 0;
  };

  // Step 7 - Implement query - Returns the last value of counter executed.
  public query func see() : async Float {
    return counter;
  };

  // Step 8 - Implement power
  public func power(x : Float) : async Float {
    counter := counter ** x;
    return counter
    //
  };

  // Step 9 - Implement sqrt
  public func sqrt() : async Float {
    return Float.sqrt(counter);
    //
  };

  // Step 10 - Implement floor.
  public func floor() : async Int {
    //Converting the counter floor value to the Int from Float.
    return Float.toInt(Float.floor(counter));
  };

};
