class CreateLicenses < ActiveRecord::Migration[5.1]
  def change
    create_table :licenses do |t|
      t.string :foo
      t.references :device
      t.timestamps
    end
  end
end
