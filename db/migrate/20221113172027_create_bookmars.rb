class CreateBookmars < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmars do |t|
      t.string :comment
      t.string :movie_id
      t.string :list_id

      t.timestamps
    end
  end
end
