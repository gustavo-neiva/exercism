defmodule GuessingGame do
  def compare(secret_number, guess \\ nil)

  def compare(secret_number, guess) when is_integer(secret_number) and not is_integer(guess) do
    "Make a guess"
  end

  def compare(secret_number, guess) when secret_number == guess do
    "Correct"
  end

  def compare(secret_number, guess) when abs(guess - secret_number) == 1 do
    "So close"
  end

  def compare(secret_number, guess) when secret_number <= guess do
    "Too high"
  end

  def compare(secret_number, guess) when secret_number >= guess do
    "Too low"
  end
end
