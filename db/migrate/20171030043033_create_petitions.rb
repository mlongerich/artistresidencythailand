class CreatePetitions < ActiveRecord::Migration[5.1]
  def change
    create_table :petitions do |t|
      t.string :name, null: false
      t.date :dob
      t.string :gender
      t.string :residency_type, null: false
      t.text :address
      t.string :email, null: false
      t.string :phone
      t.text :social_media
      t.text :practice_medium
      t.text :artistic_statement
      t.text :history
      t.text :offering
      t.text :references

      t.timestamps
    end
  end
end
