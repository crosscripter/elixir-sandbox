
# Pattern matching
4 = 2 + 2

[first | others] = [1, 2, 3]

IO.puts "first = #{first}"
IO.inspect others

mike = %{name: "Mike", age: 36}
%{name: name} = mike
IO.puts("Mike's name is #{name} and he's #{mike.age} years old!")

road = fn
    :high -> "Take the high road!"
    :low -> "Take the low road..."
    _ -> "You gotta choose :low or :high partner!"
end

IO.inspect road.(:high)
IO.inspect road.(:low)
IO.inspect road.(:middle)

about_me = fn
    %{name: name, age: age} -> "Hi, I'm #{name} and I'm #{age} years old!"
    %{name: name} -> "Hi my name is #{name}, nice to meet you!"
    %{} -> "Hi, I don't have a name!"
end

IO.puts about_me.(mike)
IO.puts about_me.(%{name: "Bob"})
IO.puts about_me.(%{identifier: "XZ-9000"})
