defmodule MarkdownParser.Line do
  def contains_thematic_break?(line) do
    String.contains?(line, "***") ||
      String.contains?(line, "---") ||
      String.contains?(line, "___")
  end
end
