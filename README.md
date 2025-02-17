# Unhandled Negative Input in Recursive Factorial Function

This repository demonstrates a common error in recursive functions: failing to handle edge cases. The `bar` function calls the recursive `foo` function (calculating factorial).  If `bar` receives a negative number, it silently returns 0 instead of raising an error which is unexpected and wrong behaviour.

## Bug

The bug lies in the `bar` function. When `x` is negative, it should throw an exception indicating that the factorial is undefined for negative numbers. Instead, it returns 0, which is incorrect.

## Solution

The solution involves adding error handling to the `bar` function to explicitly throw an exception when a negative input is detected.