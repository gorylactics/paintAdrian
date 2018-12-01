class CreateZombie1s < ActiveRecord::Migration[5.2]
  def change
    create_table :zombie1s do |t|
      t.string :name
      t.string :humanoMordido1
      t.string :integer

      t.timestamps
    end
  end
end
