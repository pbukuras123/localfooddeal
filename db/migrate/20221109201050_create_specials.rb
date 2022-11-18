class CreateSpecials < ActiveRecord::Migration[7.0]
  def change
    create_table :specials do |t|
      t.string :restaurantName
      t.string :title
      t.string :dayOfWeek
      t.string :town
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
