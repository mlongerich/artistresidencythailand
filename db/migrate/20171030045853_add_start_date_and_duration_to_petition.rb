class AddStartDateAndDurationToPetition < ActiveRecord::Migration[5.1]
  def change
    add_column :petitions, :start_date, :date
    add_column :petitions, :duration, :string
  end
end
