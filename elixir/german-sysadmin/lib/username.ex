defmodule Username do
  def sanitize(~c""), do: ~c""

  def sanitize([head | tail]) do
    sanitized_head = sanitize_char(head)
    sanitized_tail = sanitize(tail)
    sanitized_head ++ sanitized_tail
  end

  defp sanitize_char(char) when char in ?a..?z or char == ?_, do: [char]

  defp sanitize_char(?ä), do: ~c"ae"
  defp sanitize_char(?ö), do: ~c"oe"
  defp sanitize_char(?ü), do: ~c"ue"
  defp sanitize_char(?ß), do: ~c"ss"

  defp sanitize_char(_), do: ~c""
end
