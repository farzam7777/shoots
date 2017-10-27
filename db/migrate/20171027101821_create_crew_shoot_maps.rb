class CreateCrewShootMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :crew_shoot_maps do |t|
      t.integer :crew_member_id
      t.integer :shoot_id

      t.timestamps
    end
  end
end
