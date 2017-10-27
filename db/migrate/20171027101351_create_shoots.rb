class CreateShoots < ActiveRecord::Migration[5.1]
  def change
    create_table :shoots do |t|
      t.string :title
      t.date :start_date

      t.timestamps
    end
  end
end
