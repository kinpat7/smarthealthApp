class CreateClinics < ActiveRecord::Migration[5.1]
  def change
    create_table :clinics do |t|
      t.string :clinic_name
      t.string :clinic_address
      t.integer :clinic_phone
      t.string :clinic_email

      t.timestamps
    end
  end
end
