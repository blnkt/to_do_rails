class List < ActiveRecord::Base
  validates :name, presence: true
  has_many :tasks

  def self.done
    completed = []
    self.all.each do |list|
    completed << list if list.done == true
    end
    completed
  end

  def self.not_done
    to_complete = []
    self.all.each do |list|
    to_complete << list if list.done == false
    end
    to_complete
  end
end
