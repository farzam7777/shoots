class CreateCrewMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :crew_members do |t|
      t.string :stage_name
      t.string :legal_name
      t.string :agent_name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
