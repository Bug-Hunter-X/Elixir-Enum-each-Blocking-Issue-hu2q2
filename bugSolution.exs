```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.map
IO.puts("Solution 1: Using Enum.map")
Enum.map(list, fn x ->
  if x == 3 do
    Process.sleep(1000)
  end
  x
end) |> Enum.each(fn x -> IO.puts(x) end)

# Solution 2: Using Task.async_stream for parallel processing
IO.puts("\nSolution 2: Using Task.async_stream")
Task.async_stream(list, fn x ->
  if x == 3 do
    Process.sleep(1000)
  end
  x
end) |> Enum.each(fn {:ok, x} -> IO.puts(x) end)
```