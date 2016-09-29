class Trend < ActiveRecord::Base
  validates :title, :date, presence: true
end
