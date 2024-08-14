defmodule BirdCount do
  def today([]), do: nil

  def today([head | _tail]), do: head

  def increment_day_count([]), do: [1]

  def increment_day_count([head | tail]) do
    today_count = today([head]) + 1
    [today_count] ++ tail
  end

  def has_day_without_birds?([]), do: false

  def has_day_without_birds?([head | tail]) do
    today = today([head])

    if today == 0 do
      true
    else
      has_day_without_birds?(tail)
    end
  end

  @spec total(any()) :: non_neg_integer()
  def total(list) do
    Enum.sum(list)
  end

  def busy_days(list) do
    Enum.count(list, fn item -> item >= 5 end)
  end
end
