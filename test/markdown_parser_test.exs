defmodule MarkdownParserTest do
  use ExUnit.Case
  doctest MarkdownParser

  test "greets the world" do
    assert MarkdownParser.hello() == :world
  end
end
