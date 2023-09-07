defmodule MarkdownParserTest do
  use ExUnit.Case
  doctest MarkdownParser

  test "greets the world" do
    assert MarkdownParser.hello() == :world
  end

  test "(example 43) parses thematic breaks with valid characters" do
    assert MarkdownParser.parse("***\n---\n___") == "<hr />\n<hr />\n<hr />"
  end
end
