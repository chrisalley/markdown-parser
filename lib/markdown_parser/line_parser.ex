defmodule MarkdownParser.LineParser do
  alias MarkdownParser.Line

  def parse(line) do
    if Line.contains_thematic_break?(line) do
      parse_thematic_break(line)
    else
      parse_paragraph(line)
    end
  end

  defp parse_thematic_break(line) do
    hr_tag = "<hr />"
    line
    |> String.replace("***", hr_tag)
    |> String.replace("---", hr_tag)
    |> String.replace("___", hr_tag)
  end

  defp parse_paragraph(line) do
    opening_p_tag = "<p>"
    closing_p_tag = "</p>"
    opening_p_tag <> line <> closing_p_tag
  end
end
