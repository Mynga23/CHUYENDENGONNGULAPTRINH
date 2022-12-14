class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.string :first_name
      t.string :lats_name
      t.string :email
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
