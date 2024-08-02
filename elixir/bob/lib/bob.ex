defmodule Bob do
  @spec hey(String.t()) :: String.t()
  def hey(input) do
    upcase? = fn x -> x == String.upcase(x) end

    cond do
      String.ends_with?(input, "?") ->
        "Sure."

      upcase?.(input) ->
        "Whoa, chill out!"

      upcase?.(input) and String.ends_with?(input, "?") ->
        "Calm down, I know what I'm doing!"

      String.length(input) == 0 ->
        "Fine. Be that way!"

      true ->
        "Whatever."
    end
  end
end
