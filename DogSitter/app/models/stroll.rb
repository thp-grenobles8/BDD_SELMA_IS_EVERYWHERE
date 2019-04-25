class Stroll < ApplicationRecord
  belongs_to :dogsitter
  belongs_to :city
  has_many :join_table_stroll_dogs
  has_many :dogs, through: :join_table_stroll_dogs
end
