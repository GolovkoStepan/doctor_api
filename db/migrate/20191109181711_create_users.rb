class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :med_insurance
      t.string :password_digest
      t.datetime :date_of_birth
      t.integer :role

      t.timestamps
    end
  end
end
