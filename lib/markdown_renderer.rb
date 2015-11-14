class MarkdownRenderer
  def self.render text
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)

    markdown.render(text).html_safe
  end
end