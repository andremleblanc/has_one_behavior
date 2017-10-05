class CreateDevices < ActiveRecord::Migration[5.1]
  def change
    create_table :devices do |t|
      t.datetime :licensed_at
      t.timestamps
    end
  end
end
