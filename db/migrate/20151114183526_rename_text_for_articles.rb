class RenameTextForArticles < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles, :text, :body
  end
end
