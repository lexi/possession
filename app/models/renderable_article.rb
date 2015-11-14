require "markdown_renderer"

class RenderableArticle < DelegateClass(Article)
  attr_accessor :object

  def initialize article
    @object = article
    super article
  end

  def body
    MarkdownRenderer.render object.body
  end
end