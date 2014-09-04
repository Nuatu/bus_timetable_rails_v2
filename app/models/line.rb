class Line < ActiveRecord::Base

validates :name, presence: true
has_and_belongs_to_many :stations, join_table: :stops

end
