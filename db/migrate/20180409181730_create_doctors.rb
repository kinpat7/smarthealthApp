class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :doctor_name
      t.string :specialality

      t.timestamps
    end
  end
end
