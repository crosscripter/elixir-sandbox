
# List functions

IO.inspect(List.first(["a", "b", "c"]))
IO.inspect(List.last(["a", "b", "c"]))

# Reverse lives in Enum module
IO.inspect(Enum.reverse([1, 2, 3]))

cities = ["vienna", "melbourne", "osaka", "calgary", "sydney"]
Enum.each(cities, &IO.puts/1)

# Capturing module functions
puts = &IO.puts/1
puts.("Evansville")

IO.inspect(Enum.map(cities, &String.capitalize/1))

# double our list using our own function
IO.inspect(Enum.map([1, 2, 3, 4, 5], fn x -> x * 2 end))

# Reduce
scores = [72, 80, 90, 52, 53, 70, 47, 61, 100, 94, 62]
IO.inspect(Enum.reduce(scores, fn (score, sum) -> sum + score end))

# Verbose reduce!
Enum.reduce(scores, fn (score, sum) ->
  IO.puts(sum)
  IO.puts(score)
  IO.puts("---")
  sum + score
end)
