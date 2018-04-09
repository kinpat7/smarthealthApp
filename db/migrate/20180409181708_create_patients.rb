class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :patient_name
      t.date :dob
      t.string :address
      t.integer :phone_no
      t.string :special_observation

      t.timestamps
    end
  end
end
