defmodule Lasagna do
  defp minutes(), do: 40
  defp minutes_to_prepare(), do: 2

  def expected_minutes_in_oven() do
    minutes()
  end

  def remaining_minutes_in_oven(n) do
    if n < minutes() do
      minutes() - n
    end
  end

  def preparation_time_in_minutes(n) do
    n * minutes_to_prepare()
  end

  def total_time_in_minutes(nl, nm) do
    (nl * minutes_to_prepare()) + nm
  end

  def alarm() do
    "Ding!"
  end
end
