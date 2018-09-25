class AddCategoryRefToGists < ActiveRecord::Migration[5.2]
  def change
    add_reference :gists, :category, foreign_key: true
  end
end
