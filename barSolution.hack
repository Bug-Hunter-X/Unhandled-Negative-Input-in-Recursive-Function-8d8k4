function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0) {
    throw new Exception("Factorial is not defined for negative numbers");
  } else {
    return foo(x);
  }
}

function main(): void {
  try {
    echo bar(5);
  } catch (Exception $e) {
    echo $e->getMessage();
  }
  try {
    echo bar(-5);
  } catch (Exception $e) {
    echo $e->getMessage();
  }
}
