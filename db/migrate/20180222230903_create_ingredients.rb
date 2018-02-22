class CreateIngredients < ActiveRecord::Migration[5.1]
  def self.up
    create_table :ingredients do |t|
      t.string :name
      t.text :spread
      t.timestamps
    end
  end

  def self.down
    drop.table :posts
  end
end
