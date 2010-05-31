class CreatePollAnswers < ActiveRecord::Migration
  def self.up
    create_table :poll_answers do |t|
      t.string :answer
      t.integer :votes, :default => 0
      t.references :poll
      t.timestamps
    end
  end

  def self.down
    drop_table :poll_answers
  end
end
