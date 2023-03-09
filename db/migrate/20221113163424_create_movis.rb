class CreateMovis < ActiveRecord::Migration[7.0]
  def change
    create_table :movis do |t|
      t.string :title, null: false
      t.string :overview, null: false
      t.string :poster_url, null: false
      t.string :rating, null: false

      t.timestamps
    end
  end
end
