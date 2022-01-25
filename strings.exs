
# String.reverse/1
s = "This is a string"
IO.puts "\"#{s}\" reversed is \"#{String.reverse(s)}\""

# String.split
IO.inspect String.split s
IO.inspect(String.split("What-in-the-world", "-"))

# String.replace
IO.inspect(String.replace("Moooooo", "o", "e"))

IO.inspect(String.upcase("Not so quiet anymore"))

IO.inspect(String.downcase("WAAAAAAY TOO LOUD"))

IO.inspect(String.trim("    LOTS OF SPACE      "))

cap = &String.capitalize/1
IO.puts cap.("mr.")

# Calling
IO.inspect(String.reverse(String.upcase("hello pipe operator")))

# Piping/Chaining
IO.inspect("hello pipe operator" |> String.upcase() |> String.reverse())
