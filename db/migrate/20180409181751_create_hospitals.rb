class CreateHospitals < ActiveRecord::Migration[5.1]
  def change
    create_table :hospitals do |t|
      t.string :hospital_name
      t.string :hospital_address
      t.integer :hospital_phone
      t.string :hospital_email

      t.timestamps
    end
  end
end
