#encoding: UTF-8

xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Alexis Fellenius Makrigianni"
    xml.description "Alexis is a product designer, digital strategist and partner at Oktavilla"
    xml.link "http://lexi.se"
    xml.language "en"
    xml.tag! 'atom:link', :rel => 'self', :type => 'application/rss+xml', :href => feed_url

    for article in @articles
      xml.item do
        xml.title article.title
        xml.author "Alexis Fellenius Makrigianni"
        xml.pubDate article.created_at.to_s(:rfc822)
        xml.link "#{article_url(article)}"
        xml.guid article.id

        rendered_article = RenderableArticle.new article
        xml.description rendered_article.body

      end
    end
  end
end
