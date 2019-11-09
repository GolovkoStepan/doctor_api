class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :email
      t.string :phone
      t.string :cabinet
      t.datetime :date_of_birth
      t.belongs_to :specialization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
