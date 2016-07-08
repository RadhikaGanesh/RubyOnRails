class CreateAppoinments < ActiveRecord::Migration
  def change
    create_table :appoinments do |t|
      t.belongs_to :physician, index: true
      t.belongs_to :patient, index: true
      t.string :appoinment_time
      t.string :datetime

      t.timestamps null: false
    end
  end
end
