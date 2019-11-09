class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
