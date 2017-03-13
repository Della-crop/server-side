class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.String :first_name
      t.String :last_name
      t.String :room_number
      t.String :smart_watch_SN

      t.timestamps
    end
  end
end
