class CreateBookmars < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmars do |t|
      t.string :comment, null: false
      t.string :movie_id, null: false
      t.string :list_id, null: false
      t.references :movi, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
