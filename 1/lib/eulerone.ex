defmodule EulerOne do
  def run(limit) do
    1..(limit - 1) |> Enum.filter(fn x -> is_multiple(x) end) |> Enum.sum
  end

  defp is_multiple(x) do
    is_multiple_of_3(x) || is_multiple_of_5(x)
  end

  defp is_multiple_of_3(x) do
    rem(x, 3) == 0
  end

  defp is_multiple_of_5(x) do
    rem(x, 5) == 0
  end

end
