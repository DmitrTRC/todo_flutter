void main() {
  print("Hello world!");

  const int terminator = 4;

  for (var i = 0; i <= 10; i++) {
    // Stateless FOR
    print("I = ${i}");
    i += terminator; // Stateful!
  }
}
