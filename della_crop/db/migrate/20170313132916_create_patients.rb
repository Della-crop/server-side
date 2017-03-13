class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :room_number
      t.string :smart_watch_SN

      t.timestamps
    end
  end
end
