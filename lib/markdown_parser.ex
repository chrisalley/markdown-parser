defmodule MarkdownParser do
  @moduledoc """
  Documentation for `MarkdownParser`.
  """
  alias MarkdownParser.LineParser

  @doc """
  Hello world.

  ## Examples

      iex> MarkdownParser.hello()
      :world

  """
  def hello do
    :world
  end

  def parse(text) do
    String.split(text, "\n")
    |> Enum.map(fn(line) -> LineParser.parse(line) end)
    |> Enum.join("\n")
  end
end
