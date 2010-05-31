class Poll < ActiveRecord::Base
  has_many :poll_answers
  has_many :vote_records
  accepts_nested_attributes_for :poll_answers
end
