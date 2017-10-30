class AddIntentionToPetition < ActiveRecord::Migration[5.1]
  def change
    add_column :petitions, :intention, :text
  end
end
