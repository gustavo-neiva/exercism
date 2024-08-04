defmodule Bob do
  @spec hey(String.t()) :: String.t()
  def hey(input) do
    upcase? = fn x -> x == String.upcase(x) end

    cond do
      input |> String.replace(" ", "") |> String.trim() |> String.length() |> Kernel.==(0) ->
        "Fine. Be that way!"

      upcase?.(input) and String.ends_with?(input, "?") and Regex.match?(~r/[A-Z]/, input) ->
        "Calm down, I know what I'm doing!"

      upcase?.(input) and Regex.match?(~r/\p{Lu}/u, input) ->
        "Whoa, chill out!"

      input
      |> String.replace(" ", "")
      |> (fn transformed_input -> String.ends_with?(transformed_input, "?") end).() ->
        "Sure."

      true ->
        "Whatever."
    end
  end
end
