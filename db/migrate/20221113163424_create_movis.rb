class CreateMovis < ActiveRecord::Migration[7.0]
  def change
    create_table :movis do |t|
      t.string :title
      t.string :overview
      t.string :poster_url
      t.string :rating

      t.timestamps
    end
  end
end
