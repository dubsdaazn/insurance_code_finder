class CreateInsuranceEntries < ActiveRecord::Migration
  def change
    create_table :insurance_entries do |t|
      t.string :insurance_company
      t.string :surgery_code
      t.boolean :is_approved
      t.timestamps
    end
  end
end
