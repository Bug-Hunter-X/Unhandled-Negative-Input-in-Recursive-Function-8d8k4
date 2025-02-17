function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(x: int): int {
  if (x < 0) {
    return 0; //Should be an exception
  } else {
    return foo(x);
  }
}

function main(): void {
  echo bar(5);
}
