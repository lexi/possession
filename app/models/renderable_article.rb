require "markdown_renderer"

class RenderableArticle < DelegateClass(Article)
  attr_accessor :object

  def initialize article
    @object = article
    super article
  end

  def text
    MarkdownRenderer.render object.text
  end
end