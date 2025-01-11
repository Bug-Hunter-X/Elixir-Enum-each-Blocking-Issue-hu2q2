# Elixir Enum.each Blocking Issue

This example demonstrates a potential issue with using `Enum.each` in Elixir when the function within includes a long-running or blocking operation. This can lead to unexpected delays or hangs, especially if the operation is time-consuming or involves I/O.

The solution explores using `Enum.map` or `Task.async_stream` for non-blocking and parallel processing to improve performance and prevent blocking.

## Bug

The code in `bug.exs` shows a list being iterated upon with Enum.each. Inside the loop, a simulated long-running operation (Process.sleep) can block the execution flow, affecting responsiveness.

## Solution

`bugSolution.exs` provides two solutions:

1. Using `Enum.map` to create a new list with the processed elements. This avoids the blocking behavior of `Enum.each`.
2. Using `Task.async_stream` for parallel processing if the operation on each list element is independent.