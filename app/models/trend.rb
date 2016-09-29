class Trend < ActiveRecord::Base
  validates :title, :date, presence: true
  validates :title, uniqueness: true
end
