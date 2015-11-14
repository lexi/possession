class RenameTextForArticles < ActiveRecord::Migration
  def change
    rename_column :articles, :text, :body
  end
end
