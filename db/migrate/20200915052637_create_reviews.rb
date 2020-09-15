class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.float :score
      t.text :comments
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
