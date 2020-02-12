class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :event, foreign_key: true
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
