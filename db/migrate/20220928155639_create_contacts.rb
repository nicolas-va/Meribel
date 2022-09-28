class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :surname
      t.string :name
      t.string :email
      t.date :starting_date
      t.date :end_date
      t.text :message

      t.timestamps
    end
  end
end
