class CreateNamecards < ActiveRecord::Migration[5.1]
  def change
    create_table :namecards do |t|
      t.string :name
      t.string :tel
      t.string :address
      t.string :company

      t.timestamps
    end
  end
end
