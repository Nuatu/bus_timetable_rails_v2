class Station < ActiveRecord::Base

  validates :name, presence: true

  has_and_belongs_to_many :lines, join_table: :stops
end
