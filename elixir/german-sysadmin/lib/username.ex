defmodule Username do
  def sanitize([]), do: []

  def sanitize([head | tail]) do
    sanitized_head =
      case head do
        char when char in ?a..?z -> [char]
        ?_ -> [?_]
        ?ä -> ~c"ae"
        ?ö -> ~c"oe"
        ?ü -> ~c"ue"
        ?ß -> ~c"ss"
        _ -> ~c""
      end

    sanitized_head ++ sanitize(tail)
  end
end
