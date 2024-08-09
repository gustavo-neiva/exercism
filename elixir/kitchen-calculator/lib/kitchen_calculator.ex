defmodule KitchenCalculator do
  @conversion_factors %{
    milliliter: 1,
    cup: 240,
    fluid_ounce: 30,
    teaspoon: 5,
    tablespoon: 15
  }

  def get_volume(volume_pair) do
    {_, volume} = volume_pair
    volume
  end

  def to_milliliter({unit, _} = volume_pair) do
    {:milliliter, get_volume(volume_pair) * @conversion_factors[unit]}
  end

  def from_milliliter({:milliliter, _} = volume_pair, unit) do
    {unit, get_volume(volume_pair) / @conversion_factors[unit]}
  end

  def convert(volume_pair, unit) do
    volume_pair |> to_milliliter() |> from_milliliter(unit)
  end
end
