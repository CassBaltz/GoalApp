class CreateCheers < ActiveRecord::Migration
  def change
    create_table :cheers do |t|
      t.integer :user_id, null: false
      t.integer :goal_id, null: false

      t.timestamps null: false
    end
  end
end
