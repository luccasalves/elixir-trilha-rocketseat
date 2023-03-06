defmodule ListFilter do
  require Integer
  require String

  def call(list) do
    list
    |> Enum.filter(fn el -> Integer.parse(el) != :error end)
    |> Enum.count(fn el -> String.to_integer(el) |> Integer.is_odd() end)
  end
end
