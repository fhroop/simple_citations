module CitationsHelper
  def format_linebreaks(text)
    safe_text = h(text)
    paragraphs = split_paragraphs(safe_text).map(&:html_safe)

    html = ''.html_safe
    paragraphs.each do |paragraph|
      html << paragraph
    end
    html
end
end
