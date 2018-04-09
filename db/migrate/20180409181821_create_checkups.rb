class CreateCheckups < ActiveRecord::Migration[5.1]
  def change
    create_table :checkups do |t|
      t.references :patient, foreign_key: true
      t.references :clinic, foreign_key: true
      t.references :doctor, foreign_key: true
      t.date :date
      t.time :time
      t.text :summary

      t.timestamps
    end
  end
end
