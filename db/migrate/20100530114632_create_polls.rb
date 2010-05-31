class CreatePolls < ActiveRecord::Migration
  def self.up
    create_table :polls do |t|
      t.string :question
      t.integer :total_votes, :default => 0
      t.integer :total_voters, :default => 0
      t.boolean :active, :default => true
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :multiple, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :polls
  end
end
