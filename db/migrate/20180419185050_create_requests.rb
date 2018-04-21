class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.references :patient, foreign_key: true
      t.references :hospital, foreign_key: true
      t.references :doctor, foreign_key: true
      t.string :summary

      t.timestamps
    end
  end
end
