class CreateActorShootMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :actor_shoot_maps do |t|
      t.integer :actor_id
      t.integer :shoot_id

      t.timestamps
    end
  end
end
