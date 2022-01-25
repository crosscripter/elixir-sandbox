
bob = %{name: "Bob", age: 52}

Enum.each(bob, fn ({key, value}) ->
  IO.puts("#{key} = #{value}")
end)

# Converting forecasts from C into F
forecast = %{
  "Monday" => 28,
  "Tuesday" => 29,
  "Wednesday" => 29,
  "Thursday" => 24,
  "Friday" => 16,
  "Saturday" => 16,
  "Sunday" => 20
}

c_to_f = fn temp -> temp * 1.8 + 32 end
fforecast = Enum.map(forecast, fn ({day, temp}) -> {day, c_to_f.(temp)} end)
new_forecast = Enum.into(fforecast, %{})
IO.inspect(new_forecast)

# OR piping we get this instead!
%{
  "Monday" => 28,
  "Tuesday" => 29,
  "Wednesday" => 29,
  "Thursday" => 24,
  "Friday" => 16,
  "Saturday" => 16,
  "Sunday" => 20
}
|> Enum.map(fn ({day, temp}) -> {day, c_to_f.(temp)} end)
|> Enum.into(%{})
|> IO.inspect
