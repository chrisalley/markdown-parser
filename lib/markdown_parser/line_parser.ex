defmodule MarkdownParser.LineParser do
  alias MarkdownParser.Line

  def parse(line) do
    if Line.contains_thematic_break?(line) do
      parse_thematic_break(line)
    else
      line
    end
  end

  defp parse_thematic_break(line) do
    hr_tag = "<hr />"
    line
    |> String.replace("***", hr_tag)
    |> String.replace("---", hr_tag)
    |> String.replace("___", hr_tag)
  end
end
