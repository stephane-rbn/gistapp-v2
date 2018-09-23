class CreateGists < ActiveRecord::Migration[5.2]
  def change
    create_table :gists do |t|
      t.string :filename
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
