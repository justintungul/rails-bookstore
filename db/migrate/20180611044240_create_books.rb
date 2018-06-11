class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :category_id
      t.integer :author_id
      t.integer :publisher_id
      t.string :isbn
      t.string :price
      t.string :buy
      t.date :publication
      t.text :excerpt
      t.string :format
      t.integer :pages

      t.timestamps
    end
  end
end