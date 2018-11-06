class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :role
      t.string :party
      t.string :twitter_id
      t.string :facebook
      t.integer :seniority
      t.integer :next_election

      t.timestamps
    end
  end
end
