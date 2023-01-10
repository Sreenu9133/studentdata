class Detail < ApplicationRecord
  validates :name, presence: true
  validates :place, presence: true, length: {minimum: 5}
  validates :contact, presence: true, length: {is: 10}
  validates :age, presence: true, length: {is: 2}
  validates :department, presence: true
  validates :group, presence: true
  validates :selfdetails, presence: true, length: {minimum: 20}
 
end
