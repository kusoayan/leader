class CreateAlphabetNumbers < ActiveRecord::Migration
  def change
    create_table :alphabet_numbers do |t|
      t.string :alphabet

      t.timestamps
    end
  end
end
