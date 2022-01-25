
# Define a hello world type of application in Elixir!

greeting = fn (name) ->
  IO.puts "Hello, #{name}!"
end

greeting.("World")
