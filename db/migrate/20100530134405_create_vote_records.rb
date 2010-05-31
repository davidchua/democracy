class CreateVoteRecords < ActiveRecord::Migration
  def self.up
    create_table :vote_records do |t|
      t.references :poll
      t.string     :ip_address
      t.timestamps
    end
  end

  def self.down
    drop_table :vote_records
  end
end
